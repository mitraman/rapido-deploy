certbot certonly --webroot --webroot-path /etc/letsencrypt/challenge -d www.rapidodesigner.com,rapidodesigner.com --manual-public-ip-logging-ok 
docker stop web
docker start web
