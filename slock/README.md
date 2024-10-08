# suckless `slock` (Simple X display locker)

simple screen locker utility for X

I just migrated to slock from i3lock-fancy so nothing too creative on this build just yet. All that has been replaced are the default colors, which are as follows:


```c
static const char *colorname[NUMCOLS] = {
	[INIT] =   "#303030",     /* after initialization */
	[INPUT] =  "#11427E",   /* during input */
	[FAILED] = "#7d4c10",   /* wrong password */
};
```


Might get more creative with this in the future, but for right now — let's pretend that it's all for #MiniMUHlism 😎 and not because I'm too lazy to write/apply patches for it 😬

## Requirements

In order to build slock you need the Xlib header files.

## Installation

Edit config.mk to match your local setup (slock is installed into the /usr/local namespace by default).

Afterwards enter the following command to build and install slock
(if necessary as root):

```bash
make clean install
```


If you're on Arch Linux you can also just run `makepkg -s` on this git directory and you might be able to just magically get an Arch Package build in this directory, albeit with a little bit of file redundancy

## Running slock

Simply invoke the `slock` command. To get out of it, enter your password.

## Autolock

`slock` can be started after a specific period of user inactivity using xautolock. The command syntax is:

```bash
xautolock -time 10 -locker slock
```

Simpler alternatives to `xautolock` might be `xssstate` or my personal favorite, `xss-lock`.

Just use `xss-lock`…
