---
title: "Fixing Brightness Problems in Linux"
type: "blog"
date: 2014-03-04 23:51:09 +0530
aliases:
    - /blog/2014/03/04/fixing-brightness
description: Tutorial to fix the screen backlight problems with linux
---
*You can find the said applications/scripts in my [github repository](https://github.com/Gleek/linux-brightness-hack)*

 ![](https://lh3.googleusercontent.com/FtDEhFz8XUmpm-kK2gXko-Y6y9SojmlX8TQPmFht1Xx15GY__hKAANFn9kcI-6wuC1sXVfRpIBE3oo-20kHJqkk0DKtQoliaT9_ruWfQVdYOEE3COC0Sc1uHL5q0X8UoCMTZuYUfNeFT1Yoe6wJVK8OOY3QlLGfvUSaUlK32PUnIb-5isnpWbwi2ZfedUYUaFmLJU1MNR3MgslxbJ4Q0TSX2BcSRWu2l_ilCf2CB3zPmXNPkOlPXLPhADIJUVlZsqtNhv7q4s8t9uvTZuMU0NpsXOooN7s7VyvpJ3YOQEYimyMB1Pz7YMNSo3nV5lCXPBn63XkIkigQ9HoYZn5oKW5CLTu3wSqMh2zYoEfvbZIrB0KEA6EMTjiirc4BnKvcs0IOTYahm5r2Ws2x7N2Pr6KnSlOWB1rHVA7dw9cRCKV2qA_tJsjKJSvlPUngWn2STRtuprHvigclTX-hMn7V24P6QTHbPilB3uQRN91iYOrNo7pkLhgo-WmGo6sABukUM4ETwUVSUUgTSsxYrD9aBoZz7WOOZo0Z4awGcDQgNXCzg5Rza81TVmRxa7cwbIEMu21TZUaaEN9Kot3f6q1iaYnos_zFTMhrau4lQVzZRNbrVxx5pY8IjT8i3dix8zPDv-RZgcpm7ExPrxr8_zcSXJbdgay-9cN7AP7yFZxbR9w=s240-no)


This is a problem which I faced since the beginning I installed Linux. My system neither recognized my display settings nor those damn shortcut keys (the combination of `fn` keys) worked , so I ended up getting a dark screen (with zero brightness) every time the system starts-up. I couldn't even change the brightness with those faulty shortcut keys!!
<!--more-->
So the obvious question was:
#### How the hell did I work with no display?
I worked in recovery mode!! To be honest I started to hate my Fedora 'cause of that bulgy screen I would get in 800×600 resolution mode. Since I was a noobier noob at that time I decided to work with that. Later I found a silly workaround by "practicing" changing brightness in recovery mode and then "actually" changing brightness without the display on normal mode to get the display :astonished: ...Yeah..Lame!
## The actual workaround..
I had to find a way to change the brightness of the display by a script of some sort, which can be automated later by a keyboard shortcut or at system start-up.

### Method I : Editing the brightness file
I found out that the actual brightness file was

`/sys/class/backlight/acpi_video0/brightness`

or

`/sys/class/backlight/intel_backlight/brightness`

and changing them with root access changes the brightness.
The problem here was that I wasn't able to give a script root access without it prompting for a password. I moved the other way since I couldn't figure that out.

Recently, I figured out the way to give the scripts root access by editing `/etc/sudoers/` file and adding

```bash
$user ALL=(ALL) NOPASSWD: $path_to_script
```

where `$user` is the user-name and `$path_to_script` is what it says it is!
### Method II: Making a Python Script
After some researching I found out about the [dbus module of python](http://www.freedesktop.org/wiki/Software/dbus/), which basically could help me `get` or `set` the brightness. Using this and a little argument parsing I was successfully able to make a script which changed the brightness.
**Update:** *This method doesn't work on Gnome-Shell v3.10 :worried: . I will update a patch soon.*
### Method III :Emulating brightness keys with xdotool
The [Xdotool](http://www.semicomplete.com/projects/xdotool/) can be used to emulate the brightness virtual key `xdotool key XF86MonBrightnessUp` to increase the brightness and `xdotool key XF86MonBrightnessDown` to decrease the brightness.
### Method IV :Using xbacklight
[xbacklight](http://linux.die.net/man/1/xbacklight) is a tool adjust backlight brightness using RandR extension. It's the easiest way to change the brightness, without getting into details. It can be installed from the repository by a simple `yum` or `apt-get` command. Brightness can be changed using `xbacklight inc 10` to increase brightness by 10% and `xbacklight dec 10` to decrease the brightness by the same amount.
### Method V :When everything else fails...(using xrandr)
Recently one of my friends brought his laptop to me with a problem with similar nature, yet was very different. His brightness keys were fully functional but due to some bug his brightness didn't change on changing the brightness through the default applet or the keys. On googling about it a bit, I found that it was a known [bug](https://bugzilla.redhat.com/show_bug.cgi?id=753012) with a shell script solution in one of the [comments](https://bugzilla.redhat.com/show_bug.cgi?id=753012# c10) using `xrandr`. I modified the shell script to make it work with keyboard shortcuts and it solved his problem 8) .
## Finally...Adding keyboard shortcut
Once you've got your script ready and working you need to automate it using a keyboard shortcut.
This can easily be done by Settings&gt;Keyboard&gt;Shortcuts&gt;Custom Shortcuts
and add your application
(Warning:Your keyboard shortcut shouldn't overlap with already mapped shortcuts. Example: You can set options such as `Ctrl` + `F3` to increase and `Ctrl`+`F2` to decrease brightness)
**Tip:**You can use `gconf-editor` for advanced options.
### Adding Scripts at start-up
If you're having problems with your default brightness setting i.e. your brightness is either too low or too high or maybe you don't require a keyboard shortcut, just a way to change script automatically at start-up. You can add applications at start-up without worrying to add keyboard shortcuts like in the previous method.

There are many ways you can add application at start-up they are given [here](http://askubuntu.com/questions/48321/how-do-i-start-applications-automatically-on-login) and [here](http://stackoverflow.com/questions/7221757/run-automatically-program-on-startup-under-linux-ubuntu) but what I find simplest is using `gnome-session-properties` and simply adding the application.
Once you've made those changes, you're ready to feel the magic of automatic brightness.

![Joda](https://lh3.googleusercontent.com/FCv0ym7w-1XAVZasBSuIjfElzXyEn-SG1N9WwSY7ai_OV2zeRHKS0-g00vmgLwlf1XyLlQHilYRjXbGIXxxsod4gmAfCIxdCDAj_xH7rUjCErdkJWlTbmoMBwO0ldFFZiMjgbbz4wFxk-DVU73iO3sKvjp6ykgGFHMaPaJhYlzZ9COxGmYYPRG1qGzw12NbYHj3fnoU1HNEDDPDqpUODtLofFzMNcMHj8plG9vtcUfK_Aw-RzZ_bmE-x1-c7F_EUtUYa5AOGiOW3h3moyjE53CQBd2vb1lxrByEVsfx-c8RJ-JYKjfbLcvAOu-ZWdgavz6Sg6WQduWRV-0ls6XErcPDQsXaVFiQ2rBgQeOoFu-YnbsIzK7Pm5pQ6d9EwN5ZCfswhpQyNJ1lP1wxof5bhZQJWLGPZQSIKGg5ItL72GaDpH0hPjmTmQHe8eHF0k9KCe84PKoB61cFXt9R1G8Y8ToRg2uDWadbMgMKw7Zpm2Jk6y2-687qeMexmGzexIpVge5-sJhOC7aQu6pt7AbqEvustP7x3cmNVq0s230U7z3PkfsDS_SWzJ6kNFVX6FZDOioNKcc8FGg3xcnhID16FkrpNOqM6wEmuDfnwx9FVWvx56FZU2pFYv8L2VVEBjcdszDk4FwYcGavpUE3iHk8jZPj_CUID_JDcC4ChGSOcgQ=s256-no)
