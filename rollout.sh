#!/bin/bash
workdir="/var/tmp/argo"
project="fanli_admin"
job_number=$(date +%s)
cd ${workdir}
oldversion=$(cat nginx1.yaml | grep "image:" | awk -F ':' '{print $NF}')
newversion=$1

echo "old version is: "${oldversion}
echo "new version is: "${newversion}

##tihuan jingxiangbanben
sed -i.bak${job_number} 's/'"${oldversion}"'/'"${newversion}"'/g' nginx1.yaml
