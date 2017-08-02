docker run --network=isolated_nw --name=backend -d -e "RAPIDO_DATABASE_HOST=db" -e "RAPIDO_DATABASE_PORT=5432" rapido-backend:release
