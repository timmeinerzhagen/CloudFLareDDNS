# DDNS for use with CloudFlare

This project is aimed to adjust changing IPs in CDN/DNS [Cloudflare](https://www.cloudflare.com/). It allows static Domain with the IP frequently changing in the backend

## Functionality

This is a script that pulls the current IP and compares it with the one currently available in CloudFront. If they differ, an adjustment of the CloudFlare DNS is executed.

This task is called every 5 minutes via a cronjob. The results are logged.

## Setup

You will need an API key for the use of [CloudFront API](https://api.cloudflare.com/). You can create one in [your profile](https://dash.cloudflare.com/profile/api-tokens).

1. Copy the file "config.default.conf" to an "default.conf"
2. Enter your information in "default.conf"
3. Test functionality by starting ddns.sh
4. Adjust the startcronjob.sh file to reflect your correct path
5. Establish the cronstask with startcronjob.sh

## License

MIT
Feel free to use as you wish. No responsibility for content.
