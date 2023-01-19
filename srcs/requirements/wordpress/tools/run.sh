#!/bin/sh

wp core install --url=mel-hada.42.fr --title=inception --admin_user=m0hs1ne --admin_password=123 --admin_email="m0hs1ne@outlook.com" --skip-email --allow-root
wp user create test 'mel-hada@student.1337.ma' --user_pass=122 --role=author --allow-root
wp theme install cockatoo --activate --allow-root
wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root
wp plugin update --all --allow-root
/usr/sbin/php-fpm8 -F