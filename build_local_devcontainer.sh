docker rm -f oaa-community-image-local
echo y | docker image prune -a
docker build -t oaa-community-image .
directory_path=$(realpath ./)
docker run -v $directory_path:/local-volume-bridge -e HOST_DIR=$directory_path -e VEZA_TEST_ENV=https://lab-kevin.vezacloud.com -d -t --name oaa-community-image-local oaa-community-image:latest
docker exec -it oaa-community-image-local /bin/bash\