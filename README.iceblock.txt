This is a preview release of the Ice Block for Tile World.

Files
-----

tworld.exe - The modified Tile World executable
SDL.dll    - The latest version of the SDL library. No, my modified tworld.exe
             will not work with the version that comes with Tile World 1.3.0

tiles.bmp   - Modified tileset which includes the ice block.
icetest.ccl - A levelset to help test if the ice block is working properly.
              Note: most of the levels do not have an exit.

iceblock.patch - The modifications I made to Tile World.

In Short
--------

Make a new Tile World directory; replace `tworld.exe`, `SDL.dll`, and
`tiles.bmp`. The Ice Block does everything it should except clone. Please post
bug reports to the newsgroup.


About the Patch
---------------

The Ice Block is an element from the unreleased Chip's Challenge 2. It is like
a normal dirt block, but with the following differences:
    
  - It turns Fire into Water; Water into Ice
  - You can push multiple Ice Blocks
  - It destroys Dirt
  - Tanks and Teeth can push it

There is one major deficiency, which is that you cannot yet clone Ice Blocks.
I mentioned that this is a preview release, right? That's why. It *will* be
fixed.

In all other ways, this patch should exhibit the same behaviour as
[pieguy's patch][1] for MSCC.

Please send bug reports to the [Chip's Challenge newsgroup][2]. I am interested
in corner cases.

[1]: <http://www.ecst.csuchico.edu/~pieguy/chips/patches/pgchip.html>
[2]: <news://news.annexcafe.com/annexcafe.chips.challenge>

Running on Windows
------------------

This zip only includes files which have been changed from Tile World 1.3.0.
So, the first step is to download Tile World from it's website.

<http://www.muppetlabs.com/~breadbox/pub/software/tworld/tworld-1.3.0-win32.exe>

Once that is done, create a new directory for your new Tile World. Call it
something descriptive, like `tworld-iceblock`. Now copy or move the installer
into your directory, run it, and press "Extract".

(For users who already have Tile World 1.3.0, you can use the installer you
already have, or copy your existing Tile World directory to a new location.
I would not recommend replacing your current Tile World install just yet.)

Now find the directory you extracted Tile World to, and replace the
`tworld.exe` and `SDL.dll` files with the ones included in this zipfile.

Open the `res` subdirectory in your new Tile World install, and replace
tiles.bmp with the tiles.bmp from this zipfile.

Put icetest.ccl in the `sets` subdirectory. It will give you something to
play with.

Now double-click `tworld.exe`. Tile World should start. Yay!


Compiling on Linux
------------------

You need to have the `patch`, `gcc`, and `make` utilities installed on your
sytem. You will also need a recent version of the SDL development library.
Your linux distribution probably has the SDL development library in their
package repository (search for something like `libsdl-dev`), but if not, you
can download it from the [SDL homepage][3]. Be sure to get the one labeled
"development".
  
[3]: <http://www.libsdl.org/>


  1. Download and extract the [Tile World 1.3.0 source code][4].
   
[4]: <http://www.muppetlabs.com/~breadbox/pub/software/tworld/tworld-1.3.0.tar.gz>

  2. cd to the directory of the source code and apply the patch
        
        $ cd /path/to/tworld-1.3.0
        $ patch -p1 < /path/to/iceblockzip/iceblock.patch

  3. copy the modified graphics to the `res` directory, and optionally copy
    `icetest.ccl` to the `sets` directory.

        $ cp /path/to/iceblockzip/tiles.bmp ./res
        $ cp /path/to/iceblockzip/icetest.ccl ./sets

  4. build
        
        $ ./configure
        $ make

  5. run :)
        
        $ ./tworld


A note about source code
------------------------

Because this is just a preview of the Ice Block modification, I have decided
not to distribute the full source code. I have opted, instead, to distribute
a patch file, along with a binary for windows users who do not wish to compile
the game themselves. 

That being said, in accordance with the terms of the GPL, anyone who wishes
may contact me to ask for a complete copy of the source code, and I will
comply.

Rest assured that when the patch has been completed to my satisfation, I will
post a full source distribution online. Unless, of course, Brian Raiter
incorporates my patch into the mainline.


License
-------

Tile World is copyright (C) 2001-2006 by Brian Raiter. This program is free
software; you can redistribute it and/or modify it under the terms of the
GNU General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License,
included in this distribution in the file COPYING.txt, for more details.

It was modified in 2009 by Andrew Ekstedt to add the Ice Block.

