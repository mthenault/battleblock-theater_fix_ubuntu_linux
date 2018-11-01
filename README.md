# battleblock-theater_fix_ubuntu_linux
This script fixes the broken startup of Battleblock Theater under Linux. Tested with ubuntu 18.04

# Quick start
simply start fix_battleblock_theater_on_ubuntu_linux_18.04.sh. 
```
./fix_battleblock_theater_on_ubuntu_linux_18.04.sh
```
The script assumes that your game is installed under the default location. If the game is installed somewhere else, change BATTLEBLOCK_BIN at the start of the script.

# Technical explanation
The script does the following:
- installs the missing libopenal library. This fixes this error:
```
/tools/linux/runtime/i386/lib/i386-linux-gnu:/tools/linux/runtime/i386/lib:/tools/linux/runtime/i386/usr/lib/i386-linux-gnu:/tools/linux/runtime/i386/usr/lib::.
End LD_LIBRARY_PATH\n
/home/mic/.steam/steam/steamapps/common/BattleBlock Theater/BattleBlockTheater: error while loading shared libraries: libopenal.so.1: cannot open shared object file: No such file or directory
```
- Patches the binary based on the help found here https://steamcommunity.com/app/238460/discussions/1/451848855012217196/#c343787920142097238 using bspatch.
This fixes this error : 
```
/tools/linux/runtime/i386/lib/i386-linux-gnu:/tools/linux/runtime/i386/lib:/tools/linux/runtime/i386/usr/lib/i386-linux-gnu:/tools/linux/runtime/i386/usr/lib::.
End LD_LIBRARY_PATH\n
Setting breakpad minidump AppID = 238460
Steam_SetMinidumpSteamID:  Caching Steam ID:  76561197977691320 [API loaded no]
DEBUG: Steam checks done
dbus[4189]: arguments to dbus_message_new_method_call() were incorrect, assertion "path != NULL" failed in file ../../../dbus/dbus-message.c line 1362.
This is normally a bug in some application using the D-Bus library.

  D-Bus not built with -rdynamic so unable to print a backtrace
Aborted (core dumped)
```
