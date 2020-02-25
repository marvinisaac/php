#! /bin/bash

echo 'Building custom PHP image...'
sleep 1

docker build --rm \
    -t docker.pkg.github.com/marvinisaac/php/php-7.4:0.0.0 \
    .
docker image prune -f
docker push docker.pkg.github.com/marvinisaac/php/php-7.4:0.0.0

echo 'Done!'
