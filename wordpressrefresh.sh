#!/bin/bash

(crontab -l; echo "* * * * * mysqldump -u johndupont --all-databases | tee /var/www/html/photo1.txt") | crontab -