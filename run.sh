echo "Building docker image for env"

port=3000
ip=172.18.0.22
docker images purge -f
echo "Running on ip $ip and port $port"
if [ "$(docker ps -q -a -f name=findagame)" ]; then
   docker rm -f findagame
fi
#docker build -t findagame .
docker-compose build
docker-compose up -d