#!/bin/bash
workdir="/data/jenkins/fanli_admin"
project="fanli_admin"
job_number=$(date +%s)
cd ${workdir}
oldversion=$(cat ${project}_delpoyment.yaml | grep "image:" | awk -F ':' '{print $NF}')
newversion=$1

echo "old version is: "${oldversion}
echo "new version is: "${newversion}

##tihuan jingxiangbanben
sed -i.bak${job_number} 's/'"${oldversion}"'/'"${newversion}"'/g' ${project}_delpoyment.yaml

##zhixing shengjibanben
kubectl apply -f ${project}_delpoyment.yaml --record=true
