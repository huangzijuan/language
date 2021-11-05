#!/bin/sh
echo 'start'

#orionRobotServiceRootDir=D:/Orion/RobotService
#orionRobotServiceArray=("SpeechService-orion")
#orionRobotServiceRootDirSuffix=app/src/main/res


orionRobotSystemRootDir=D:/Orion/RobotSystem
orionRobotSystemArray=("FirstConfig" "Home" "Inspection" "MapTool" "VideoCall")
orionRobotSystemRootDirSuffix=app/src/main/res

orionRobotServiceRootDir=D:/Orion/RobotService
orionRobotServiceArray=("CoreService" "HardwareService" "HeadService" "NavigationService"
 "RemoteControlService" "SpeechService-orion" "UploadService-orion")
orionRobotServiceRootDirSuffix=app/src/main/res

orionRobotSettingsRootDir=D:/Orion/RobotSettings/app/src/main/res

orionRobotPlatformAppRootDir=D:/Orion/RobotPlatform/app/src/main/res
orionRobotPlatformRootDir=D:/Orion/RobotPlatform/platform/src/main/res


languageDir=D:/LuckiBotROMNew

#文件夹名称预处理
for name in `ls $languageDir`;
do
  if [[ $name == id ]]; then
    mv $languageDir/id $languageDir/in
  elif [[ $name == no ]]; then
    mv $languageDir/no $languageDir/nb
  elif [[ $name == zh-CN ]]; then
    mv $languageDir/zh-CN $languageDir/zh
  elif [[ $name == zh-HK ]]; then
    mv $languageDir/zh-HK $languageDir/zh-rGD
  elif [[ $name == zh-TW ]]; then
    mv $languageDir/zh-TW $languageDir/zh-rTW
  fi
  done

for name in `ls $languageDir`;
do
  echo $name;
  for file in `ls $languageDir/$name`;
  do
    echo $file;
    if [[ $file == RobotSystem ]]; then
      for robotSystemFile in `ls $languageDir/$name/RobotSystem`;
      do
          for a in ${orionRobotSystemArray[*]};
          do
            if [[ $robotSystemFile == $a* ]]; then
              destDir=$orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-$name
              if [ ! -d "$destDir" ]; then
                mkdir $destDir
              fi
              if [[ $robotSystemFile == $a-strings* ]]; then
                echo $robotSystemFile
                mv $languageDir/$name/RobotSystem/$robotSystemFile $orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-$name/strings.xml
              elif [[ $robotSystemFile == $a-arrays* ]]; then
                mv $languageDir/$name/RobotSystem/$robotSystemFile $orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-$name/arrays.xml
              elif [[ $robotSystemFile == FirstConfig-values-strings* ]]; then
                mv $languageDir/$name/RobotSystem/$robotSystemFile $orionRobotSystemRootDir/$a/$orionRobotSystemRootDirSuffix/values-$name/strings.xml
              fi
            fi
            done
        done
    elif [[ $file == RobotService ]]; then
      for robotServiceFile in `ls $languageDir/$name/RobotService`;
      do
          for a in ${orionRobotServiceArray[*]};
          do
            if [[ $robotServiceFile == $a* ]]; then
              destDir=$orionRobotServiceRootDir/$a/$orionRobotServiceRootDirSuffix/values-$name
              if [ ! -d "$destDir" ]; then
                mkdir $destDir
              fi
              if [[ $robotServiceFile == $a-strings* ]]; then
                echo $robotServiceFile
                mv $languageDir/$name/RobotService/$robotServiceFile $orionRobotServiceRootDir/$a/$orionRobotServiceRootDirSuffix/values-$name/strings.xml
              fi
            fi
            done
        done
    elif [[ $file == RobotSettings ]]; then
      for robotSettingsFile in `ls $languageDir/$name/RobotSettings`;
      do
        destDir=$orionRobotSettingsRootDir/values-$name
        if [ ! -d "$destDir" ]; then
          mkdir $destDir
        fi
        destDir1=$orionRobotSettingsRootDir/xml-$name
        if [ ! -d "$destDir1" ]; then
          mkdir $destDir1
        fi
        if [[ $robotSettingsFile == RobotSettings-values-strings* ]]; then
          echo $robotSettingsFile
          mv $languageDir/$name/RobotSettings/$robotSettingsFile $orionRobotSettingsRootDir/values-$name/strings.xml
        elif [[ $robotSettingsFile == RobotSettings-xml-time_zone* ]]; then
          echo $robotSettingsFile
          mv $languageDir/$name/RobotSettings/$robotSettingsFile $orionRobotSettingsRootDir/xml-$name/time_zone.xml
        fi
        done
    elif [[ $file == RobotPlatform ]]; then
      for robotPlatformFile in `ls $languageDir/$name/RobotPlatform`;
      do
        destDir=$orionRobotPlatformAppRootDir/values-$name
        if [ ! -d "$destDir" ]; then
          mkdir $destDir
        fi
        destDir1=$orionRobotPlatformRootDir/values-$name
        if [ ! -d "$destDir1" ]; then
          mkdir $destDir1
        fi
        if [[ $robotPlatformFile == RobotPlatform-app-strings* ]]; then
          echo $robotPlatformFile
          mv $languageDir/$name/RobotPlatform/$robotPlatformFile $orionRobotPlatformAppRootDir/values-$name/strings.xml
        elif [[ $robotPlatformFile == RobotPlatform-platform-strings* ]]; then
          echo $robotPlatformFile
          mv $languageDir/$name/RobotPlatform/$robotPlatformFile $orionRobotPlatformRootDir/values-$name/strings.xml
        fi
        done
    fi
    done
  done

