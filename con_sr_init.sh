mkdir microservices/service_registry
cp service_registry.py microservices/service_registry/
cp requirements.txt microservices/service_registry/
wget https://static.alta3.com/courses/microservices/dockerfile.service_registry -O microservices/service_registry/Dockerfile
sudo docker build -t service_registry:latest microservices/service_registry/
sudo docker run -d --env-file microservices/dragon.env --name service_registry service_registry
sleep 3
curl $SR_IP:55555/add/example_service/10.1.1.1/1234

