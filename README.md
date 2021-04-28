# OrangeLink Loop/FreeAPS Feature Patch 2.5
### What does this patch do?
Requires Orangelink Firmware v2.5
* Disables MySentry Packets to increase OrangeLink battery life with Medtronic x23/x54 pumps
* Adds Battery Level Status % Display
* Adds OrangeLink Firmware and Hardware Version Listing
* Adds % Setting for Low Battery Alert (buzz enable/disable)
* Adds % Setting for Low Voltage Alert (buzz enable/disable)
* Adds Toggle to Enable/Disable Connection State 10 second Blinking LED
* Adds Toggle to Enable/Disable Connection State Vibration Alert
* Adds Test commands to test Yellow and Red LED’s, and the Haptic Motor

![alt text](https://github.com/jlucasvt/orangelink-feature-patch/raw/main/Features.jpeg?raw=true)

### How do I get it?
First Please update your OrangeLink to the latest Firmware..

Copy Paste the following script reference into your MacOS "Terminal.app".
* Options 1,2,3 will Download a new Workspace and Patch it
* Option 4 will Patch an existing Workspace Build Folder

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jlucasvt/orangelink-feature-patch/main/OrangeLink-DL-Workspace-and-Patch.sh)"
```
![alt text](https://github.com/jlucasvt/orangelink-feature-patch/raw/main/termpic.png?raw=true)

### What will the script do?
1. Prompt you to choose a Workspace Build
2. Download the selected Workspace to the ~Home\Downloads\BuildX-DATE\ folder
3. Patch the Workspace with the OrangeLink Feature Patch
4. Launch XCode so you can select your Signing Targets.

### Credits:
* Loop-n-Learn Group for providing a starting place for the Bash Script.
* Vic Wu for all his work and the dev teams work for the patch.
