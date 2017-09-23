docker build -t csr-minecraft ./
docker run -d -u 1000:1000 -p 25566:25565 -v world:/data/world -v logs:/data/logs -e EULA=TRUE --name minecraft csr-minecraft