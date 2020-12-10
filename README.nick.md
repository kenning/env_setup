# README.nick.md: Notes for my future self for terminal stuff

`~/.zprofile`
Main thing with my aliases

`~/.zshrc`
Just for zsh settings and overriding one zsh git plugin command

--------------------------------------------------------------------------------

## UBUNTU stuff i always forget

**Guide to filesystem structure**
https://www.pathname.com/fhs/pub/fhs-2.3.pdf

`gio open .`
opens things in file browser

`git status > xsel -b`
copy output to the clipboard

`gc -a > out.txt 2>error.txt`
copy ERROR message, if it exists, to the clipboard.
from outerlabs lefthook preventing me from committing :(

--------------------------------------------------------------------------------

## Unix stuff i always forget: Logging in as another user

`whoami`
user1

`su - user2`
Password:

`whoami`
user2

`exit`
logout

### Clipboard

`pbcopy < file.txt`
copies the file to clipboard
`ps aux | pbcopy`
copies the output of the command to clipboard

--------------------------------------------------------------------------------

### Unix stuff i always forget: Use hard drive

`diskutil list`
lists all connected drives

`cd /Volumes/DRARD\ HIVE/`
Goes to that disk. ez

When the drive won't mount, it's because fsck is holding it down
`ps aux | grep fsck`
`please kill fsck`

--------------------------------------------------------------------------------

## Removing startup items

  Items in /Library/LaunchDaemons and /System/Library/LaunchDaemons load when 
  your Mac starts up, and run as the root user.

  Items in /Library/LaunchAgents and /System/Library/LaunchAgents load when any 
  user logs in, and run as that user. 

  Items in /Users/your-username/Library/LaunchAgents load only when that 
  particular user logs in, and run as that user. 

  Of those five folders, the two located in the /System folder 
  (/System/Library/LaunchDaemons and /System/Library/LaunchAgents) are for 
  components included as part of OS X, and you should resist the temptation to 
  remove or alter them—they’re essential to keep your Mac running correctly.

`launchctl unload ~/Library/LaunchAgents/com.apple.FolderActions.enabled.plist`

--------------------------------------------------------------------------------

## Vim stuff i always forget

### Netrw at current pwd vs original place

:Ve vs :Ve. :Ve will make a vertical split with netrw at your 
current spot, :Ve. will do it but at the place you originally ran vim .

### History of /, ?, : commands

q/, q?, q: will show you the history of each command.
Not :q/

### Built-in 'dumb' autocomplete

ctrl+n

### Copying to osx keyboard

- copy selected part: visually select text and type :w !pbcopy
- copy the whole file :%w !pbcopy

### CtrlSF

- I've set up ctrl+shift+f to do a search in the 'current' directory
  (this is basically always the frontend repo, for ethos)

### Commenting out lines

I got a plugin for this, try `gcc`, or `gc` in visual mode

### Run shell inside vim

:! <command>

--------------------------------------------------------------------------------

## Zsh (zsh) tips

- Use z to estimate and move to the most frequent/recent dir with that name
- Lowercase can turn into uppercase but uppercase demands uppercase match

--------------------------------------------------------------------------------

## ffmpeg

# convert multiple files
for i in *.avi; do ffmpeg -i "$i" "${i%.*}.mp4"; done

# optimized gif
> The standard way to use ffmpeg for GIFs is
> Generate a palette from the video
ffmpeg -y -i file.mp4 -vf palettegen palette.png
> Then,
ffmpeg -y -i file.mp4 -i palette.png -filter_complex paletteuse -r 10 -s 320x480 file.gif
> but then i installed and used gifsicle instead...
> https://superuser.com/questions/1107200/optimize-animated-gif-size-in-command-line

