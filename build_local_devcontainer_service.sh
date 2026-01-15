docker-compose rm -f oaa-community-service-local
docker-compose down
echo y | docker image prune -a
directory_path=$(realpath ./)
docker-compose run -it --rm -v $directory_path:/local-volume-bridge -e HOST_DIR=$directory_path oaa-community-image bash
