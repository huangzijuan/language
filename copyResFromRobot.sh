#!/bin/sh
echo 'start'
rm -rf D:/language

orionRobotServiceRootDir=D:/Orion/RobotService
orionRobotServiceArray=("CoreService" "HardwareService" "HeadService" "NavigationService" "NavigationService-orion"
 "RemoteControlService" "SpeechService-orion" "UploadService-orion")
orionRobotServiceRootDirSuffix=app/src/main/res

destRobotServiceRootDir=D:/language/Orion/RobotService
destRobotServiceRootDirSuffix=app/src/main

for a in ${orionRobotServiceArray[*]};
do
  orionRobotServiceDir="$orionRobotServiceRootDir/$a/$orionRobotServiceRootDirSuffix"
  destRobotServiceDir="$destRobotServiceRootDir/$a/$destRobotServiceRootDirSuffix"
#  echo $destDir
  mkdir -p $destRobotServiceDir
  cp -r $orionRobotServiceDir $destRobotServiceDir
  done



orionRobotSystemRootDir=D:/Orion/RobotSystem
orionRobotSystemArray=("FirstConfig" "Home" "Inspection" "MapTool" "VideoCall")
orionRobotSystemRootDirSuffix=app/src/main/res

destRobotSystemRootDir=D:/language/Orion/RobotSystem
destRobotSystemRootDirSuffix=app/src/main

for a in ${orionRobotSystemArray[*]};
do
  orionRobotSystemDir="$orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix"
  destRobotSystemDir="$destRobotSystemRootDir/$a/$destRobotSystemRootDirSuffix"
  mkdir -p $destRobotSystemDir
  cp -r $orionRobotSystemDir $destRobotSystemDir
  done


orionRobotSettingsRootDir=D:/Orion/RobotSettings/app/src/main/res
destRobotSettingsRootDir=D:/language/Orion/RobotSettings/app/src/main
mkdir -p $destRobotSettingsRootDir
cp -r $orionRobotSettingsRootDir $destRobotSettingsRootDir



orionRobotPlatformRootDir=D:/Orion/RobotPlatform/app/src/main/res
destRobotPlatformRootDir=D:/language/Orion/RobotPlatform/app/src/main
mkdir -p $destRobotPlatformRootDir
cp -r $orionRobotPlatformRootDir $destRobotPlatformRootDir

orionRobotPlatformRootDir=D:/Orion/RobotPlatform/platform/src/main/res
destRobotPlatformRootDir=D:/language/Orion/RobotPlatform/platform/src/main
mkdir -p $destRobotPlatformRootDir
cp -r $orionRobotPlatformRootDir $destRobotPlatformRootDir



orionRobotPackagesRootDir=D:/Orion/RobotPackages
orionRobotPackagesArray=("Cafe_DeskService" "Cafe_Leading" "Cafe_Portal" "Cafe_Welcome" "Chat"
"DistributeFood" "Meal" "Plate_Recycling" "Workflow" "WorkflowUtils" "OverSea_Welcome" "OverSea_Meal"
"OverSea_Leading" "OverSea_DistributeFood")
orionRobotPackagesRootDirSuffix=app/source/res

destRobotPackagesRootDir=D:/language/Orion/RobotPackages
destRobotPackagesRootDirSuffix=app/source

for a in ${orionRobotPackagesArray[*]};
do
  orionRobotPackagesDir="$orionRobotPackagesRootDir/$a/$orionRobotPackagesRootDirSuffix"
  destRobotPackagesDir="$destRobotPackagesRootDir/$a/$destRobotPackagesmRootDirSuffix"
  mkdir -p $destRobotPackagesDir
  cp -r $orionRobotPackagesDir $destRobotPackagesDir
  done

