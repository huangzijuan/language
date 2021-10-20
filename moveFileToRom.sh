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

languageDir=D:/LuckiBotROM/ru

for file in `ls $languageDir`;
do
  echo $file;
  if [[ $file == RobotSystem ]]; then
    for robotSystemFile in `ls $languageDir/RobotSystem`;
    do
        for a in ${orionRobotSystemArray[*]};
        do
          if [[ $robotSystemFile == $a* ]]; then
            destDir="$orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-ru"
            if [ ! -d "$destDir" ]; then
              mkdir $destDir
            fi
            if [[ $robotSystemFile == $a-strings* ]]; then
              echo $robotSystemFile
              mv $languageDir/RobotSystem/$robotSystemFile $orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-ru/strings.xml
            elif [[ $robotSystemFile == $a-arrays* ]]; then
              mv $languageDir/RobotSystem/$robotSystemFile $orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-ru/arrays.xml
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
            destDir="$orionRobotServiceRootDir/$a/$orionRobotServiceRootDirSuffix/values-ru"
            if [ ! -d "$destDir" ]; then
              mkdir $destDir
            fi
            if [[ $robotServiceFile == $a-strings* ]]; then
              echo $robotServiceFile
              mv $languageDir/RobotService/$robotServiceFile $orionRobotServiceRootDir/$a/$orionRobotServiceRootDirSuffix/values-ru/strings.xml
            fi
          fi
          done
      done
  elif [[ $file == RobotSettings ]]; then
    for robotSettingsFile in `ls $languageDir/RobotSettings`;
    do
      destDir="$orionRobotSettingsRootDir/values-ru"
      if [ ! -d "$destDir" ]; then
        mkdir $destDir
      fi
      destDir1="$orionRobotSettingsRootDir/xml-ru"
      if [ ! -d "$destDir1" ]; then
        mkdir $destDir1
      fi
      if [[ $robotSettingsFile == values-strings* ]]; then
        echo $robotSettingsFile
        mv $languageDir/RobotSettings/$robotSettingsFile $orionRobotSettingsRootDir/values-ru/strings.xml
      elif [[ $robotSettingsFile == xml-time_zone* ]]; then
        echo $robotSettingsFile
        mv $languageDir/RobotSettings/$robotSettingsFile $orionRobotSettingsRootDir/xml-ru/time_zone.xml
      fi
      done
  elif [[ $file == RobotPlatform ]]; then
    for robotPlatformFile in `ls $languageDir/RobotPlatform`;
    do
      destDir="$orionRobotPlatformAppRootDir/values-ru"
      if [ ! -d "$destDir" ]; then
        mkdir $destDir
      fi
      destDir1="$orionRobotPlatformRootDir/values-ru"
      if [ ! -d "$destDir1" ]; then
        mkdir $destDir1
      fi
      if [[ $robotPlatformFile == app-strings* ]]; then
        echo $robotPlatformFile
        mv $languageDir/RobotPlatform/$robotPlatformFile $orionRobotPlatformAppRootDir/values-ru/strings.xml
      elif [[ $robotPlatformFile == platform-strings* ]]; then
        echo $robotPlatformFile
        mv $languageDir/RobotPlatform/$robotPlatformFile $orionRobotPlatformRootDir/values-ru/string.xml
      fi
      done
  elif [[ $file == RobotPackages ]]; then
    for robotPackagesFile in `ls $languageDir/RobotPackages`;
    do
        for a in ${orionRobotPackagesArray[*]};
        do
          if [[ $robotPackagesFile == $a.* ]]; then
            echo $robotPackagesFile $a;
            mv $languageDir/RobotPackages/$robotPackagesFile $orionRobotPackagesRootDir/$a/$orionRobotPackagesRootDirSuffix/ru.js
          fi
          done
      done
  fi
  done
