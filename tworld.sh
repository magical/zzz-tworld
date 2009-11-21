tworld ()
{
    {
        make -q tworld.exe || make tworld.exe
    } && (
        rm -f stderr.txt stdout.txt;
        { HOME= ./tworld "$@" & } || return;
        tail -n +0 --follow=name --retry --pid=$! stderr.txt &
        wait;
        [ -f stdout.txt ] && cat stdout.txt;
    )
}

