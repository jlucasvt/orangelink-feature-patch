# OrangeLink Loop/FreeAPS Feature Patch
What does this patch do
* Disables MySentry Packets in Loop for OrangeLink battery life improvement for users with Medtronic x23/x54 pumps
* Adds Battery Level Status % Display
* Adds OrangeLink Firmware Version Listing
* Adds Test commands to test Yellow and Red LED’s, and the Haptic Motor (These are to test the device not permanently disable the features (yet). Patience is a virtue.)

![alt text](https://github.com/jlucasvt/orangelink-feature-patch/raw/main/features.jpeg?raw=true)

Copy Paste the following script reference into your MacOS "Terminal.app".
* Option 1,2,3 will Download a new Workspace and Patch it
* Option 4 will Patch an existing Workspace Build Folder

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jlucasvt/orangelink-feature-patch/main/OrangeLink-DL-Workspace-and-Patch.sh)"
```
![alt text](https://github.com/jlucasvt/orangelink-feature-patch/raw/main/termpic.png?raw=true)

The Script will 
1. Prompt you to choose a Workspace Build
2. Download the selected Workspace to the ~Home\Downloads\BuildX-DATE\ folder
3. Patch the Workspace with the OrangeLink Feature Patch
4. Launch XCode so you can select your Signing Targets.

Credits:
Thanks to the Loop-n-Learn Group for providing a starting place for the Bash Script.
Thanks to Vic Wu for all his work and the dev teams work for the patch.
