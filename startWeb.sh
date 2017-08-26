docker stop web
docker rm web
docker run --network=isolated_nw --name=web -d -p 443:443 -v /etc/letsencrypt/live/rapidodesigner.com/:/certs:ro rapido-web:release
