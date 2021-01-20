#!/bin/bash

git reset HEAD --hard
git pull
jekyll b
sudo docker exec -it nextcloudpi rm -rf /var/www/~wydarzenia
sudo docker exec -it nextcloudpi [ -f /var/www/wydarzenia ] && mv /var/www/wydarzenia /var/www/~wydarzenia                                                                  
sudo docker cp ./_site/ nextcloudpi:/var/www/wydarzenia

