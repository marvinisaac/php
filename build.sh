#! /bin/bash

docker login -u marvinisaac -p $BUILD_SECRET docker.pkg.github.com

version=1.0.2
tag=docker.pkg.github.com/marvinisaac/php/php-7.4:$version

echo 'Building custom PHP image...'
sleep 1

docker build --rm \
    -t  $tag\
    .
docker image prune -f
docker push $tag

echo 'Done!'
