#!/bin/bash
set -e

mkdir server
cd server
curl -o serverinstall_100_100013 "https://api.feed-the-beast.com/v1/modpacks/public/modpack/100/100013/server/linux"
chmod +x serverinstall_100_100013
./serverinstall_100_100013 -auto
./run.sh
sed -i 's/false/true/g' eula.txt
./run.sh
