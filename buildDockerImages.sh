!/bin/sh

cd src
rm -rf rapido-backend
git clone https://github.com/apiacademy/rapido-backend.git
cd ..

docker build -t rapido-backend:release -f Backend.Dockerfile .

docker build -t rapido-web:release -f  Web.Dockerfile .
