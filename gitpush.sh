#!/bin/bash
workdir="/var/tmp/argo"
project="fanli_admin"
job_number=$(date +%s)
cd ${workdir}

echo *.bak* >> .gitignore
git clean -fdx
git add .
git commit -m argo
git push origin main
