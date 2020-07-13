echo "Building docker image for env"

#port=3000
#ip=172.18.0.22
#docker rmi $(docker images -q)
#if [ "$1" == "development" ]; then
#    echo "Development ... "
#    rm .env
#    mv .env.dev .env
#    port=2000
#    ip=172.18.0.26
#fi
#if [ "$1" == "production" ]; then
#    echo "Production ..."
#    rm .env
#   mv .env.prod .env
#fi
#echo "Running on ip $ip and port $port"
#if [ "$(docker ps -q -a -f name=buylocalshopping-ycbm_$1)" ]; then
#   docker rm -f buylocalshopping-ycbm_$1
#fi
#docker build -t inspira/buylocalshopping-ycbm_$1 .
#docker run --restart unless-stopped --log-driver json-file --log-opt max-size=500m --log-opt max-file=2 --name buylocalshopping-ycbm_$1 -p $port:3000 --net inspira --ip $ip #--add-host mongo_server:172.18.0.21 -d inspira/buylocalshopping-ycbm_$1
#exit $?