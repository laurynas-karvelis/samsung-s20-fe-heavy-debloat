# Samsung S20 FE HEAVY debloater

**WARNING: This script will remove **EVERYTHING** except the packages listed in the whitelist.txt file. DO NOT USE THIS if you don't know what you're doing.**

This script will remove pretty much everything from the phone, expect the ONE UI barebones. Never attempt to run this debloater on a phone that you already set up and have apps preinstalled that contain sensitive/important info/data/setup as every non-whitelisted package will be uninstalled.

## Instructions

Once the phone is factory reset and nothing else is installed, do the following:

- Enable "Developer Options" and "USB debugging" via the "Settings" app;
- Make sure `adb` is installed, ie. `brew install android-platform-tools`;
- Have both, the `debloat.sh` and `whitelist.txt` files under the same folder. Make sure `debloat.sh` is executable `chmod +x debloat.sh`;
- In the terminal:
  - Run `adb devices` to make sure your phone accepts `adb` commands;
  - Then simply run `./debloat.sh`
- Now you need to install essential most recent `apk` files from FossifyOrg:
  - [Phone](https://github.com/FossifyOrg/Phone/releases)
  - [Messages](https://github.com/FossifyOrg/Messages/releases)
  - [Contacts](https://github.com/FossifyOrg/Contacts/releases)
  - [File Manager](https://github.com/FossifyOrg/File-Manager/releases)
  - [Gallery](https://github.com/FossifyOrg/Gallery/releases)
  - [Clock](https://github.com/FossifyOrg/Clock/releases)
  - [Calculator](https://github.com/FossifyOrg/Calculator/releases)
- Download Bromite web browser (Ungoogled Chromium alternative)
  - [Bromite](https://www.bromite.org/)
- Install each downloaded `apk` using `adb install <apk_file>`

Note: "Weather" widget and "Samsung Keyboard" remain installed as they are quite useful and good looking tools. "Samsung keyboard" is now required by some crappy mobile bank apps. "USB debugging" can later be disabled as it also might force those mobile banking apps to complain.

## Outcome

Now you got a fast(er) phone that more or less belongs to you with the stock ROM. Obviously, go and disable app permissions for all apps that don't deserve them, ie. "Google Play Services" spyware app.
