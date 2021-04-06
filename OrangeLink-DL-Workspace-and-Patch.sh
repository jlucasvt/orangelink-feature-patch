#    Launch this script by pasting this command into a black terminal window.
#    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jlucasvt/orangelink-feature-patch/main/OrangeLink-DL-Workspace-and-Patch.sh)"
#    Credits - Jeremy Lucas , Vic Wu, LoopDocs Workspace, Loop-N-Learn, Loop Community

echo "Select A Workspace Build.."
echo "[ 1 ] Loop Master"
echo "[ 2 ] Loop Auto Bolus"
echo "[ 3 ] FreeAPS"
echo "[ 4 ] Download and patch inside a current workspace root folder"
read -p 'Enter the Number (1,2,3,4)?' buildtype

case $buildtype in

1)
# LoopMaster Workspace Build
echo     Set environment variables
LOOP_BUILD=$(date +'%y%m%d-%H%M')
LOOP_DIR=~/Downloads/BuildLoop/LoopMaster-$LOOP_BUILD
echo make directories using format year month date hour minute so it can be easily sorted
mkdir ~/Downloads/BuildLoop/
mkdir $LOOP_DIR
cd $LOOP_DIR
pwd
echo "Download Loop Master Workspace from github"
git clone --branch=master --recurse-submodules https://github.com/LoopKit/LoopWorkspace
cd LoopWorkspace
git remote -v
;;

2)
# Loop AutoBolus Workspace Build
echo     Set environment variables
LOOP_BUILD=$(date +'%y%m%d-%H%M')
LOOP_DIR=~/Downloads/BuildLoop/LoopAB-$LOOP_BUILD
echo make directories using format year month date hour minute so it can be easily sorted
mkdir ~/Downloads/BuildLoop/
mkdir $LOOP_DIR
cd $LOOP_DIR
pwd
echo "Download Loop AutoBolus Workspace from github"
git clone --branch=automatic-bolus --recurse-submodules https://github.com/LoopKit/LoopWorkspace
cd LoopWorkspace
git remote -v
;;

3)
# FreeAPS Workspace Build
echo     Set environment variables
LOOP_BUILD=$(date +'%y%m%d-%H%M')
LOOP_DIR=~/Downloads/BuildLoop/FreeAPS-$LOOP_BUILD
echo make directories using format year month date hour minute so it can be easily sorted
mkdir ~/Downloads/BuildLoop/
mkdir $LOOP_DIR
cd $LOOP_DIR
pwd
echo "Download FreeAPS Workspace from github"
git clone --branch=freeaps --recurse-submodules https://github.com/ivalkou/LoopWorkspace
cd LoopWorkspace
git remote -v
;;

*)
echo "Downloading the patch files into exsiting Workspace folder.."

    if [ -d rileylink_ios ]
    then
        echo  "Looks like your in a Workspace root or somewhere that we can patch..."
        LOOP_DIR = pwd
    else
        echo "The Current Directory you are running this script from DOES NOT have a rileylink_ios SubFolder"
        echo "You need to run this script from INSIDE a Workspace Project root folder that has a rileylink_ios SubFolder"
        exit
    fi
;;
esac

#PATCHING

echo Download OrangeLink Patch..
curl "https://codeload.github.com/jlucasvt/orangelink-feature-patch/zip/refs/heads/main" -O -J -L

echo "Unzip Orangelink Patch.."
unzip "orangelink-feature-patch-main.zip"

echo "Patching Workspace Folder"
PATCHFILEROOT=orangelink-feature-patch-main/OL-patch-files/rileylink_ios
echo "Patch File Root: " $PATCHFILEROOT

WORKSPACEPATCHROOT=rileylink_ios
echo "Workspace Patch Root: "$WORKSPACEPATCHROOT

echo Replace File PumpModel.swift
cp -v $PATCHFILEROOT/MinimedKit/Models/*.swift $WORKSPACEPATCHROOT/MinimedKit/Models/

echo Replace File RileyLinkMinimedDeviceTableViewController.swift
cp -v $PATCHFILEROOT/MinimedKitUI/*.swift $WORKSPACEPATCHROOT/MinimedKitUI/

echo Replace File PeripheralManager.swift
echo Replace File PeripheralManager+RileyLink.swift
echo Replace File RileyLinkDevice.swift

cp -v $PATCHFILEROOT/RileyLinkBLEKit/*.swift $WORKSPACEPATCHROOT/RileyLinkBLEKit/

echo Replace File RileyLinkDeviceTableViewController.swift
cp -v $PATCHFILEROOT/RileyLinkKitUI/*.swift $WORKSPACEPATCHROOT/RileyLinkKitUI/

echo "Clean Up"
rm "orangelink-feature-patch-main.zip"
rm -r "orangelink-feature-patch-main"

echo "Open XCode"
xed .
echo "YOU SHOULD CLOSE THIS WINDOW NOW AND FINISH SIGNING TARGETS AND CONFIGURING THE WORKSPACE IN XCODE"
exit
