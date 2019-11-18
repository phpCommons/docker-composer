#docker build -t php:5.4-alpine php/5.4/alpine3.3/cli
#docker build -t php:5.4-alpine3.8 php/5.4/alpine3.8/cli
#echo "Completed php:5.4-alpine3.8"
#sleep 5
docker build -t php:5.4-composer-alpine3.8 php/5.4/alpine3.8/composer/
echo "Completed php:5.4-composer-alpine3.8"
#sleep 5
docker build -t php:5.4-composer-xdebug-alpine3.8 php/5.4/alpine3.8/composer-xdebug
echo "Completed php:5.4-composer-xdebug-alpine3.8"
#sleep 5