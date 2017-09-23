docker stop minecraft
docker rm minecraft
docker rmi csr-minecraft
mkdir data
mkdir config
mkdir mods
mkdir plugins
docker build -t csr-minecraft ./
docker run -d  -p 25565:25565 -v data:/data -v config:/config -v mods:/mods -v plugins:/plugins -e EULA=TRUE --name minecraft csr-minecraft