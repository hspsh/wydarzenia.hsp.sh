#!/bin/bash

git fetch --all
git reset --hard origin/master
jekyll b
sudo docker exec -it nextcloudpi rm -rf /var/www/~wydarzenia
sudo docker exec -it nextcloudpi [ -f /var/www/wydarzenia ] && mv /var/www/wydarzenia /var/www/~wydarzenia
sudo docker cp ./_site/ nextcloudpi:/var/www/wydarzenia

