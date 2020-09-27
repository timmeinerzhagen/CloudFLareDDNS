# Add DynamicDNS contrab job
crontab -l > ddns-cron # write out current crontab
echo "*/5 * * * * sh /home/server/Code/serversetup/ddns/ddns.sh" >> ddns-cron #echo new cron into cron file
crontab ddns-cron #install new cron file
rm ddns-cron
