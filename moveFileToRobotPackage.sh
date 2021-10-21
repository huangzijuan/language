#!/bin/sh
echo 'start'

orionRobotPackagesRootDir=D:/Orion/RobotPackages
orionRobotPackagesArray=("Cafe_DeskService" "Cafe_Leading" "Cafe_Portal" "Cafe_Welcome" "Chat"
"DistributeFood" "Meal" "Plate_Recycling" "Workflow" "WorkflowUtils" "OverSea_Welcome" "OverSea_Meal"
"OverSea_Leading" "OverSea_DistributeFood")
orionRobotPackagesRootDirSuffix=app/source/res

languageDir=D:/LockiBotOPKNew

#文件夹名称预处理
for name in `ls $languageDir`;
do
  if [[ $name == ko ]]; then
    mv $languageDir/ko $languageDir/ko-rKR
  elif [[ $name == zh-CN ]]; then
    mv $languageDir/zh-CN $languageDir/zhCN
  elif [[ $name == zh-HK ]]; then
    mv $languageDir/zh-HK $languageDir/zhGD
  elif [[ $name == zh-TW ]]; then
    mv $languageDir/zh-TW $languageDir/zhTW
  fi
  done

for name in `ls $languageDir`;
do
  echo $name;
  for file in `ls $languageDir/$name`;
  do
    for a in ${orionRobotPackagesArray[*]};
    do
      if [[ $file == $a.* ]]; then
        echo $file $a;
        mv $languageDir/$name/$file $orionRobotPackagesRootDir/$a/$orionRobotPackagesRootDirSuffix/$name.js
      fi
      done
    done
  done

