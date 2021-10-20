#!/bin/sh
echo 'start'

orionRobotPackagesRootDir=D:/Orion/RobotPackages
orionRobotPackagesArray=("Cafe_DeskService" "Cafe_Leading" "Cafe_Portal" "Cafe_Welcome" "Chat"
"DistributeFood" "Meal" "Plate_Recycling" "Workflow" "WorkflowUtils" "OverSea_Welcome" "OverSea_Meal"
"OverSea_Leading" "OverSea_DistributeFood")
orionRobotPackagesRootDirSuffix=app/source/res

orionRobotSystemRootDir=D:/Orion/RobotSystem
orionRobotSystemArray=("FirstConfig" "Home" "Inspection" "MapTool" "VideoCall")
orionRobotSystemRootDirSuffix=app/src/main/res

orionRobotServiceRootDir=D:/Orion/RobotService
orionRobotServiceArray=("CoreService" "HardwareService" "HeadService" "NavigationService" "NavigationService-orion"
 "RemoteControlService" "SpeechService-orion" "UploadService-orion")
orionRobotServiceRootDirSuffix=app/src/main/res

orionRobotSettingsRootDir=D:/Orion/RobotSettings/app/src/main/res

orionRobotPlatformAppRootDir=D:/Orion/RobotPlatform/app/src/main/res
orionRobotPlatformRootDir=D:/Orion/RobotPlatform/platform/src/main/res

orionRobotPackagesRootDir=D:/Orion/RobotPackages
orionRobotPackagesArray=("Cafe_DeskService" "Cafe_Leading" "Cafe_Portal" "Cafe_Welcome" "Chat"
"DistributeFood" "Meal" "Plate_Recycling" "Workflow" "WorkflowUtils" "OverSea_Welcome" "OverSea_Meal"
"OverSea_Leading" "OverSea_DistributeFood")
orionRobotPackagesRootDirSuffix=app/source/res

languageDir=D:/LuckiBotROMNew

for file in `ls $languageDir`;
do
  echo $file;
  if [[ $file == RobotSystem ]]; then
    for robotSystemFile in `ls $languageDir/RobotSystem`;
    do
        for a in ${orionRobotSystemArray[*]};
        do
          if [[ $robotSystemFile == $a* ]]; then
            cp -r $languageDir/RobotSystem/$robotSystemFile/* $orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/
          fi
          done
      done
  elif [[ $file == RobotService ]]; then
    for robotServiceFile in `ls $languageDir/RobotService`;
    do
        for a in ${orionRobotServiceArray[*]};
        do
          if [[ $robotServiceFile == $a* ]]; then
            cp -r $languageDir/RobotService/$robotServiceFile/* $orionRobotServiceRootDir/$a/$orionRobotServiceRootDirSuffix/
          fi
          done
      done
  elif [[ $file == RobotSettings ]]; then
    cp -r $languageDir/RobotSettings/* $orionRobotSettingsRootDir
  elif [[ $file == RobotPlatform ]]; then
    for robotPlatformFile in `ls $languageDir/RobotPlatform`;
    do
      if [[ $robotPlatformFile == app* ]]; then
        echo $robotPlatformFile
        cp -r $languageDir/RobotPlatform/$robotPlatformFile/* $orionRobotPlatformAppRootDir/
      elif [[ $robotPlatformFile == platform* ]]; then
        echo $robotPlatformFile
        cp -r $languageDir/RobotPlatform/$robotPlatformFile/* $orionRobotPlatformRootDir/
      fi
      done
#    elif [[ $file == RobotPackages ]]; then
#    for robotPackagesFile in `ls $languageDir/RobotPackages`;
#    do
#        for a in ${orionRobotPackagesArray[*]};
#        do
#          if [[ $robotPackagesFile == $a.* ]]; then
#            echo $robotPackagesFile $a;
#            mv $languageDir/RobotPackages/$robotPackagesFile $orionRobotPackagesRootDir/$a/$orionRobotPackagesRootDirSuffix/de.js
#          fi
#          done
#      done
  fi
  done

