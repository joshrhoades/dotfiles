#!/bin/bash

# Some tweaks for SSD drives
# Details: http://blog.alutam.com/2012/04/01/optimizing-macos-x-lion-for-ssd/

echo ":: OSX SSD: UPDATING CONFIGURATION ::"
# Ask for the administrator password upfront
sudo -v

# Turn off local Time Machine snapshots [laptops only]
echo ":: OSX SSD: DISABLING TIME MACHINE SNAPSHOTS ::"
sudo tmutil disablelocal

# Turn off hibernation [laptops only]
echo ":: OSX SSD: DISABLING HIBERNATION ::"
sudo pmset -a hibernatemode 0
sudo command rm /var/vm/sleepimage

# Turn off sudden motion sensor [no HDD only]
echo ":: OSX SSD: DISABLING SUDDEN MOTION SENSOR ::"
sudo pmset -a sms 0

# Disable records last access time for every file
echo ":: OSX SSD: DISALING LAST ACCESS TIME FOR ALL FILES ::"
echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>com.nullvision.noatime</string>
    <key>ProgramArguments</key>
    <array>
      <string>mount</string>
      <string>-vuwo</string>
      <string>noatime</string>
      <string>/</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
  </dict>
</plist>' | sudo tee /Library/LaunchDaemons/com.nullvision.noatime.plist
sudo chown root:wheel /Library/LaunchDaemons/com.nullvision.noatime.plist

# Delay (180 minutes) hard drive sleep [no HDD only]
echo ":: OSX SSD: UPDATING SLEEP TIMES ::"
sudo pmset -b disksleep 180  # Battery
sudo pmset -c disksleep 180  # Power adapter

echo ":: OSX SSD: COMPLETE: RESTART REQUIRED FOR CHANGES TO TAKE EFFECT ::"
