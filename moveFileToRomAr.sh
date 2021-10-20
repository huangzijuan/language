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

languageDir=D:/LuckiBotROMNew/ar

for file in `ls $languageDir`;
do
  echo $file;
  if [[ $file == RobotSystem ]]; then
    for robotSystemFile in `ls $languageDir/RobotSystem`;
    do
        for a in ${orionRobotSystemArray[*]};
        do
          if [[ $robotSystemFile == $a* ]]; then
            destDir="$orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-ar"
            if [ ! -d "$destDir" ]; then
              mkdir $destDir
            fi
            if [[ $robotSystemFile == $a-strings* ]]; then
              echo $robotSystemFile
              mv $languageDir/RobotSystem/$robotSystemFile $orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-ar/strings.xml
            elif [[ $robotSystemFile == $a-arrays* ]]; then
              mv $languageDir/RobotSystem/$robotSystemFile $orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-ar/arrays.xml
            elif [[ $robotSystemFile == FirstConfig-values-strings* ]]; then
              mv $languageDir/RobotSystem/$robotSystemFile $orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-ar/strings.xml
            fi
          fi
          done
      done
  elif [[ $file == RobotService ]]; then
    for robotServiceFile in `ls $languageDir/RobotService`;
    do
        for a in ${orionRobotServiceArray[*]};
        do
          if [[ $robotServiceFile == $a* ]]; then
            destDir="$orionRobotServiceRootDir/$a/$orionRobotServiceRootDirSuffix/values-ar"
            if [ ! -d "$destDir" ]; then
              mkdir $destDir
            fi
            if [[ $robotServiceFile == $a-strings* ]]; then
              echo $robotServiceFile
              mv $languageDir/RobotService/$robotServiceFile $orionRobotServiceRootDir/$a/$orionRobotServiceRootDirSuffix/values-ar/strings.xml
            fi
          fi
          done
      done
  elif [[ $file == RobotSettings ]]; then
    for robotSettingsFile in `ls $languageDir/RobotSettings`;
    do
      destDir="$orionRobotSettingsRootDir/values-ar"
      if [ ! -d "$destDir" ]; then
        mkdir $destDir
      fi
      destDir1="$orionRobotSettingsRootDir/xml-ar"
      if [ ! -d "$destDir1" ]; then
        mkdir $destDir1
      fi
      if [[ $robotSettingsFile == RobotSettings-values-strings* ]]; then
        echo $robotSettingsFile
        mv $languageDir/RobotSettings/$robotSettingsFile $orionRobotSettingsRootDir/values-ar/strings.xml
      elif [[ $robotSettingsFile == RobotSettings-xml-time_zone* ]]; then
        echo $robotSettingsFile
        mv $languageDir/RobotSettings/$robotSettingsFile $orionRobotSettingsRootDir/xml-ar/time_zone.xml
      fi
      done
  elif [[ $file == RobotPlatform ]]; then
    for robotPlatformFile in `ls $languageDir/RobotPlatform`;
    do
      destDir="$orionRobotPlatformAppRootDir/values-ar"
      if [ ! -d "$destDir" ]; then
        mkdir $destDir
      fi
      destDir1="$orionRobotPlatformRootDir/values-ar"
      if [ ! -d "$destDir1" ]; then
        mkdir $destDir1
      fi
      if [[ $robotPlatformFile == RobotPlatform-app-strings* ]]; then
        echo $robotPlatformFile
        mv $languageDir/RobotPlatform/$robotPlatformFile $orionRobotPlatformAppRootDir/values-ar/strings.xml
      elif [[ $robotPlatformFile == RobotPlatform-platform-strings* ]]; then
        echo $robotPlatformFile
        mv $languageDir/RobotPlatform/$robotPlatformFile $orionRobotPlatformRootDir/values-ar/string.xml
      fi
      done
    elif [[ $file == RobotPackages ]]; then
    for robotPackagesFile in `ls $languageDir/RobotPackages`;
    do
        for a in ${orionRobotPackagesArray[*]};
        do
          if [[ $robotPackagesFile == $a.* ]]; then
            echo $robotPackagesFile $a;
            mv $languageDir/RobotPackages/$robotPackagesFile $orionRobotPackagesRootDir/$a/$orionRobotPackagesRootDirSuffix/ar.js
          fi
          done
      done
  fi
  done

