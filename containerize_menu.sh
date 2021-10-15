cd microservices/menu
wget https://static.alta3.com/courses/microservices/dockerfile.menu -O Dockerfile && cat Dockerfile
sudo docker build -t menu:latest .
wget https://static.alta3.com/courses/microservices/env.menu -O env && cat env
sed -i "s/<BCHD_IP_ADDR>/$(nslookup bchd | grep Address: | awk 'FNR==2{print $2}')/g" env
sudo docker run -d --env-file env --name menu menu:latest
sudo docker stop menu && sudo docker rm menu

