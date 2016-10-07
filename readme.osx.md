# OSX Settings

The following tweaks are made to OSX with this configuration.

## General
- STANDBY mode is changed from the default 3 hours (MBP, different on MBA) to 24 hours
- Clicking on the Clock in the login window will show IP address, Hostname, OS Version, and more
- AirDrop will be enabled for all interfaces
- Prompt for "Are you sure you want to open this application?" will be disabled.
- Locale set to en-us (language, currency, measurements, metric disabled)
- Timezone set to Los Angeles
- Apple Watch and iOS Simulator added to Launchpad
- Disk Utility
    + Debug menu enabled
    + Advanced image options enabled
- QuickTime videos will auto-play when opened
- iTunes dock notification for tracks turned on
- Inline attachments disabled in Mail.app (just shows the icon)

## Menubar
- Transparency disabled
- Dark Mode enabled
- Time Machine, and User Icons are hidden (I don't hide the Volume anymore, I actually find it useful when I don't have headphones on to at a glance see if my speakers are on)
- BT, AirPort, Battery, and Clock are unhidden
- Battery
    + Set to not show percentage
    + Set to show time remaining to charge/empty

## Terminal
- Set to UTF-8
- [osx/terminal/Visor.terminal](osx/terminal/Visor.terminal) for use with [Total Terminal](http://totalterminal.binaryage.com/) installed and set as default
- Secure keyboard entry enabled

## Time Machine
- Time Machine prevented from prompting to use new hard drives as backup volumes
- Local Time Machine backups disabled

## Safari
- Privacy
    + Sending search queries to Apple are disabled
    + Do Not Track enabled
- Tab highlights each item on a web page
- Full URL is shown in address bar (scheme is still hidden, though)
- Home page defaults to "about:blank"
- Prevented from opening "safe" downloads automatically
- Bookmark bar hidden
- Sidebar hidden in Top Sites view
- Thumbnail cache for History and Top Sites disabled
- Safari setup for dev:
    + Debug Menu enabled
    + Develop Menu enabled
    + Developer Extras enabled
- Search defaulted to `contains` operator instead of `startsWith`
- Useless icons removed from bookmarks bar
- Extensions set to update automatically
- Popup windows blocked
- Java disabled
- Autofill disabled
- Warn about fraudulent sites enabled
- Plugins disabled

## Activity Monitor
- Main window shown when launched
- CPU usage shown in dock icon
- All processes shown
- Default sort by CPU Usage

## Interfaces (keyboard, mouse, trackpad, etc.)
- Dumbass "natural" ("natural" my ass) scrolling disabled
- All controls have full keyboard access (can use tabs in modal dialogs, yay!)
- Key Repeat set to ridiculous pure f'n speed
- Press and Hold for special keys disabled for key repeat
- Tap To Click default enabled for the current user, _and_ enabled for the login screen (I hate when it isn't)

## Screen
- Password required immediately after wake or screen saver end
- Screenshots
    + Saved to `~/Desktop/screenshots`
    + Default to `.png`
    + Shadow disabled for screenshots
- Sub-pixel rendering enabled for non-Apple screens
- Dashboard disabled
- Dashboard not shown as a Space
- Spaces are not rearranged by recent use

## Finder
- `~/Library` shown by default
- `/Volumes` shown by default
- MBA SuperDrive support enabled
- File Info default expanded for "General", "Open With", and "Sharing & Permissions"
- Finder can be quit by `⌘ + Q`
- Desktop shows External HDDs
- Desktop shows Removable Media
- Finder defaulted to ColumnView
- Hidden files and file extensions are shown by default
- Warning for changing file extensions is disabled
- Text Selection enabled in QuickLook
- Warning before Empty Trash is disabled
- AutoCorrect enabled
- Print dialog expanded by default
- Save dialog expanded by default
- System-wide Resume is disabled
- Crash Reporter is disabled
- Finder always shows status bar
- Finder always shows Path bar
- Finder displays full POSIX path as title
- Folders kept on top when sorting by name
- Search will default to current folder
- Directories are spring-loaded
- Spring-loading delay removed for directories
- `.DS_Store` files are prevented on networked drives
- Disk Image verification disabled
- Desktop and other icon views shows item info to the right
- Desktop and other icon views default to snap-to-grid
- Desktop and other icon views have grid-spacing of 100
- Desktop and other icon views size to 80

## Dock
- Changed to dark mode
- Highlight hover effect enabled
- Set to Scale for min/max effect
- Windows min'd to their app's icon
- All items enabled for spring-loading
- Indicator lights turned on
- Dock set to auto hide/show
- Apps do not animation opening from the dock
- Windows are not grouped by application in Mission Control
- Auto-hide delay removed
- Animation for hiding/showing the dock is removed
- Hidden apps show translucent in the dock
- Hot Corners
    + Top Left → Mission Control
    + Top Right → Application Windows
    + Bottom Left → Start screen saver
    + Bottom Right → Show desktop

## App Store
- WebKit Developer Tools enabled
- Debug Menu enabled
- Auto Update check enabled
- Software Update checks run daily, not weekly
- New updates downloaded in background
- System data files & security updates will install
- Apps purchased on other devices will be downloaded
- App Store allowed to reboot machine for updates

## Photos
- When devices are plugged in, photos will not open automatically

## Messages
- Emojis disabled (code, dummy)
- Smart Quotes disabled (code, dummy)
- Spell checkign disabled (code, dummy, well, that and it does weird things with my words)

## Google Chrome & Google Chrome Canary
- User Scripts allowed to be installed from Gist or userscripts.org
- Uses OSX native print-preview dialog
- Print dialog expanded by default

## Transmission.app
- `~/Documents/torrents` set as default location
- No prompt to confirm before downloading
- Original torrents are trashed
- Donate message is hidden
- Legal Disclaimer is hidden
- Automatically sources IP blocklist from https://giuliomac.wordpress.com/2014/02/19/best-blocklist-for-transmission/

## Twitter.app
- Smart quotes disabled (more code reasons)
- App shown by clicking menubar icon
- Develop menu enabled
- Links open in the background
- New Tweet window can be closed by hitting `ESC`
- Full names are shown rather than handle
- App hidden in background if not the foremost window

## SSD
- Sudden Motion sensor is disabled (not useful for SSDs)
- Hibernation is disabled (speeds up entering sleep mode)
- Sleep Image file is removed to save disk space, a 0-byte file is created in its place, and set so that it cannot be overwritten. Otherwise the savings from removing the sleep file don't last as it will get reconstituted.
- Last time access is disabled for all files
