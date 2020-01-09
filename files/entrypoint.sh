#!/
# Originally from https://github.com/pozgo/docker-cacti/blob/master/container-files/config/init/start.sh

#echo '*/5    *   *   *   *   php /var/www/html/poller.php > /dev/null 2>&1' > /tmp/import-cron.conf

git clone https://github.com/rubys/venus/ /home/venus

echo "import crontab"
crontab /planet-crontab

echo "start cron"
cron -f

echo "start nginx"
/usr/sbin/nginx -g daemon off
