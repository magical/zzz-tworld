tworld () { make tworld.exe && { { HOME= ./tworld "$@" & }; pid=$! ; cat stdout.txt; cat stderr.txt && tail -n 0 -f stderr.txt --pid=$pid ; } ; }

