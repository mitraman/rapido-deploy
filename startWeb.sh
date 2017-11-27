docker stop web
docker rm web
docker run --network=isolated_nw --name=web -d -p 443:443 -p 80:80 -v /etc/letsencrypt/:/letsencrypt:ro -v /etc/letsencrypt/challenge/.well-known:/usr/share/nginx/html/.well-known:ro rapido-web:release
