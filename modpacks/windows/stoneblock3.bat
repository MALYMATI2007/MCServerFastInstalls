@echo off

md server
cd server
curl -o serverinstall_100_100013.exe "https://api.feed-the-beast.com/v1/modpacks/public/modpack/100/100013/server/windows"
serverinstall_100_100013.exe --auto
echo|set /p="eula=true" > eula.txt
run.bat
