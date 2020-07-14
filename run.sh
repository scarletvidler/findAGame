echo "Building docker image for env"

port=3000
ip=172.18.0.22
docker rmi $(docker images -q)
echo "Running on ip $ip and port $port"
if [ "$(docker ps -q -a -f name=findAGame)" ]; then
   docker rm -f findAGame
fi
docker build -t findAGame .
docker run --restart unless-stopped --log-driver json-file --log-opt max-size=500m --log-opt max-file=2 --name findAGame -p $port:3000 --net inspira --ip $ip #--add-host
mongo_server:172.18.0.21 -d inspira/findAGame
exit $?