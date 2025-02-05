@echo off
echo Building Docker image...
docker build -t my-js-game .

echo Running first container on port 8080...
docker run -d -p 8080:80 -p 8081:80 --name my-js-game-cont my-js-game

pause