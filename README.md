Myplanet Workstation
====================

Because bringing your developer workstation back from oblivion with a
measly couple of keystrokes feel as good as punching all the Disney
villians in the face at once.

This is *heavily* built off of Pivotal Labs'
[`pivotal_workstation`](https://github.com/pivotal/pivotal_workstation)
project, with special thanks to:

- [@mkocher](https://github.com/mkocher) (Matthew Kocher)
- [@ohrite](https://github.com/ohrite) (Doc Riezel)
- [@cunnie](https://github.com/cunnie) (Brian Cunnie)

How To
------

This is in ultra-super-mega-ultra draft form right now. I'll be
reformatting my workstation once a week, following my own instructions
to a 'T', so hopefully this will be battle-tested in a week or so.

### From A Fresh Laptop

If your laptop isn't fresh, see the section below, "Recommended
Reformatting Strategy".

- Install Adobe Air, as can't be installed automatically:
  - https://twitter.com/patconnolly/status/276043932905918465
  - http://get.adobe.com/air/
- Mount the Xcode DMG and copy the included app to a permanent place

        cp -r /Volumes/Xcode/Xcode.app /Applications

- Tell OSX where xcode lives:

        sudo xcode-select -switch /Applications/Xcode.app

- Download and unzip `myplanet_workstation` project:
  https://github.com/myplanetdigital/myplanet_workstation/zipball/master
- Install requirements of project:

        sudo gem install soloist librarian

- Until I get this working on the fly, open `soloistrc` and swap the
  value `homebase` for your own system username.
- You'll also want to comment out the recipe
`myplanet_workstation::homesick_castles`, as it tries to load my public
and private dotfiles, and will fail without my SSH keys.
- Speaking of which, now is a great time to install your SSH keys that
you saved from your previous OSX install.
- `cd` into the unzipped project folder and run:

        librarian-chef install
        soloist

  You'll need to provide your system password, as the chef run must be
  carried out with `sudo` access.
- Once the Chef run is complete, you'll need to run this to compile and
  use your first ruby:

        rvm pkg install autoconf
        rvm install ruby-1.9.3-p194
        rvm use 1.9.3-p194

### Recommended Reformatting Strategy

- Restart OSX and hold option key with the USB boot key inserted, Choose ______
- Start disk util
- Open "Partition" tab on main drive, and click "+" to add a new partition.
- Drag the slider until its just a little larger than the current required space
- Name the new partition and apply
- Choose "Reinstall OSX"
- Choose the new partition and continue along. Start fresh and don't import old user data.
- After restarting, your old data will be available on "Macintosh HD". I suggest keeping that around for a few weeks, and then, once you've started from scratch and made sure everything is in the cloud or version-controlled, delete it and reinstall OSX fresh, using a single partition on the laptop

### Getting the Kickstart Files

Specific version of any of these aren't strictly required, but they're
what has already been tested. Make sure you have these files before
wiping any data, just so you're covered.

- *Save your SSH keys!* This is one of the few unique files you'll need!
- Mountain Lion boot USB
  - Download Mountain Lion from App Store
  - Copy the boot disk file to the desktop

            cp /Applications/Install\ OS\ X\ Mountain\ Lion.app/Contents/SharedSupport/InstallESD.dmg ~/Desktop

  - Open Disk Util and "Restore" USB image with that DMG file. You've got your boot disk

- Xcode 4.5.2
  - Download from http://daw.apple.com/downloads

