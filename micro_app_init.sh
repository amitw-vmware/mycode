wget https://static.alta3.com/courses/microservices/dragon_w_3_micro.py -O dragon_w_3_micro.py
sudo docker ps
mkdir -p microservices/api_gateway/templates
cp templates/index.html microservices/api_gateway/templates/
wget https://static.alta3.com/courses/microservices/api_gateway.py -O microservices/api_gateway/api_gateway.py
cp requirements.txt microservices/api_gateway/
wget https://static.alta3.com/courses/microservices/dockerfile.api_gateway -O microservices/api_gateway/Dockerfile && cat microservices/api_gateway/Dockerfile
sudo docker build -t api_gateway:latest ./microservices/api_gateway/
echo API_PORT=80 >> microservices/dragon.env
sudo docker run --name api_gateway -d --env-file microservices/dragon.env api_gateway
sudo docker ps
echo "`sudo docker exec api_gateway cat /etc/hosts | grep 172. | awk '{print $1}'` docker.dragon-cafe.com" | sudo tee -a /etc/hosts

