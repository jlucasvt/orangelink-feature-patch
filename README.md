# OrangeLink Loop/FreeAPS Feature Patch
Feature patch files and shell script to download a workspace and patch the workspace.

Copy Paste the following script reference into your Terminal.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jlucasvt/orangelink-feature-patch/main/OrangeLink-DL-Workspace-and-Patch.sh)"
```

The Script will 
1. Prompt you to choose a Workspace Build
2. The Script will download the Workspace
3. Patch The Workspace
4. Launch XCode so you can select your Signing Targets.
