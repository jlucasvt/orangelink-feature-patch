# OrangeLink Loop/FreeAPS Feature Patch 2.5
### What does this patch do?
Features Require Orangelink Firmware v2.5 April 27 2021 (Update your OL Firmware First!)
https://getrileylink.org/product/orangelink#firmware


* Disables MySentry Packets to increase OrangeLink battery life with Medtronic x23/x54 pumps
* Adds Battery Level Status Display (%)
* Adds OrangeLink Firmware (FW) and Hardware (HW) Version Listing
* Adds Battery Voltage (volts)
* Adds % Setting and Alert for Low Battery (Enable/Disable)
* Adds Voltage Setting for Low Voltage Alert (Enable/Disable)
* Adds Toggle to Enable/Disable Connection State 10 Second Blinking LED
* Adds Toggle to Enable/Disable Connection State Disconnect Vibration Alert
* Adds Test Switches to test Yellow and Red LED’s, and the Haptic Motor

![alt text](https://github.com/jlucasvt/orangelink-feature-patch/raw/main/Features.jpeg?raw=true)
![alt text](https://github.com/jlucasvt/orangelink-feature-patch/raw/main/Alerts.jpeg?raw=true)

### How do I get it?
1. Update your OrangeLink to the latest Firmware Here: https://getrileylink.org/product/orangelink#firmware
2. Copy Paste the following script reference into your MacOS "Terminal.app".

```
/bin/bash -c "$(curl -fsSL https://tinyurl.com/olpatchfiles)"
```

* Options 1,2,3 will Download a new Workspace and Patch it
* Option 4 will Patch an existing Workspace Build Folder

![alt text](https://github.com/jlucasvt/orangelink-feature-patch/raw/main/termpic.png?raw=true)

### What will the script do?
1. Prompt you to choose a Workspace Build
2. Download the selected Workspace to the ~Home\Downloads\BuildX-DATE\ folder
3. Patch the Workspace with the OrangeLink Feature Patch
4. Launch XCode so you can select your Signing Targets.

### Where do I Sign Targets and Which Build Scheme should I use?
1. Click on "Loop" in the Code Navigator on the Left of XCode and you will see the targets to sign with your developer key.
2. You MUST use the "Loop (Workspace)" scheme when building to your phone NOT the "Loop" scheme.  (I have spoken)...

![alt text](https://github.com/jlucasvt/orangelink-feature-patch/raw/main/Targets-Workspace.png?raw=true)


### Credits:
* Loop-n-Learn Group for providing a starting place for the Bash Script.
* Vic Wu and the BubbleDev Team for all their hard work making this happen. 
* Original Source Code Repo : https://github.com/bubbledevteam/rileylink_ios/tree/dev_orange_pre
