# OrangeLink Loop/FreeAPS Feature Patch
Feature patch files and shell script to download a workspace and patch the workspace.

Copy Paste the following script reference into your Terminal.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jlucasvt/orangelink-feature-patch/main/OrangeLink-DL-Workspace-and-Patch.sh)"
```

The Script will 
1. Prompt you to choose a Workspace Build
2. Download the selected Workspace to the ~Home\Downloads\BuildX-DATE\ folder
3. Patch the Workspace with the OrangeLink Feature Patch
4. Launch XCode so you can select your Signing Targets.

Credits:
Thanks to the Loop-n-Learn Group for providing a starting place for the Bash Script.
Thanks to Vic Wu for all his work and the dev teams work for the patch.
