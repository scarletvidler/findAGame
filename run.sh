echo "Building docker image for env"

port=3000
ip=172.18.0.22
docker image prune -a -f
echo "Running on ip $ip and port $port"
if [ "$(docker ps -q -a -f name=findagame)" ]; then
   docker rm -f findagame
fi
docker build -t findagame .
docker run --restart unless-stopped --log-driver json-file --log-opt max-size=500m --log-opt max-file=2 --name findagame -p $port:3000 --net inspira --ip $ip --add-host mongo_server:172.18.0.21 -d inspira/findagame
exit $?