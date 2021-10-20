#!/bin/sh
echo 'start'

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


