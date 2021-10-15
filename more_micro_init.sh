mkdir -p ~/dragon-cafe/microservices/login/templates ~/dragon-cafe/microservices/fortune_cookie/templates
wget https://static.alta3.com/courses/microservices/hello.html.tmp -O ~/dragon-cafe/microservices/login/templates/hello.html && wget https://static.alta3.com/courses/microservices/login.html.tmp02 -O ~/dragon-cafe/microservices/login/templates/login.html
cat microservices/login/templates/login.html
wget https://static.alta3.com/courses/microservices/fortune.html.tmp02 -O ~/dragon-cafe/microservices/fortune_cookie/templates/fortune.html && wget https://static.alta3.com/courses/microservices/fortune_cookie.html.tmp02 -O ~/dragon-cafe/microservices/fortune_cookie/templates/fortune_cookie.html
cat microservices/fortune_cookie/templates/fortune_cookie.html
cat microservices/fortune_cookie/templates/fortune.html
wget https://static.alta3.com/courses/microservices/login.py -O ~/dragon-cafe/microservices/login/login.py
wget https://static.alta3.com/courses/microservices/fortune_cookie.py -O microservices/fortune_cookie/fortune_cookie.py
cp requirements.txt microservices/login/
cp requirements.txt microservices/fortune_cookie/
wget https://static.alta3.com/courses/microservices/dockerfile.login -O microservices/login/Dockerfile && cat microservices/login/Dockerfile
wget https://static.alta3.com/courses/microservices/dockerfile.fortune_cookie -O microservices/fortune_cookie/Dockerfile && cat microservices/fortune_cookie/Dockerfile
sudo docker build -t login:latest ./microservices/login/
sudo docker build -t fortune_cookie:latest ./microservices/fortune_cookie/
wget https://static.alta3.com/courses/microservices/dragon.env -O microservices/dragon.env && cat microservices/dragon.env
sed -i "s/<BCHD_IP_ADDR>/$(nslookup bchd | grep Address: | awk 'FNR==2{print $2}')/g" microservices/dragon.env
cat microservices/dragon.env
sudo docker run -d --env-file microservices/dragon.env --name login login && sudo docker run -d --env-file microservices/dragon.env --name fortune_cookie fortune_cookie
sudo docker ps

