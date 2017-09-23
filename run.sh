docker stop minecraft
docker rm minecraft
docker rmi csr-minecraft
mkdir data
mkdir config
mkdir mods
mkdir plugins
docker build -t csr-minecraft ./
docker run -d  -p 25565:25565 -v /home/minecraft/csr-minecraft/data:/data -v /home/minecraft/csr-minecraft/config:/config -v /home/minecraft/csr-minecraft/mods:/mods -v /home/minecraft/csr-minecraft/plugins:/plugins -e EULA=TRUE --name minecraft csr-minecraft