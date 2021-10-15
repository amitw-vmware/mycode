wget https://static.alta3.com/courses/microservices/requirements.txt.01 -O requirements.txt && cat requirements.txt
wget https://static.alta3.com/courses/microservices/dragon_monolith.py && cat dragon_monolith.py
mkdir templates && cd templates
wget https://static.alta3.com/courses/microservices/index.html.tmp -O index.html && cat index.html    
wget https://static.alta3.com/courses/microservices/menu.html.tmp -O menu.html && cat menu.html
wget https://static.alta3.com/courses/microservices/login.html.tmp -O login.html && cat login.html
wget https://static.alta3.com/courses/microservices/hello.html.tmp -O hello.html && cat hello.html
wget https://static.alta3.com/courses/microservices/fortune_cookie.html.tmp -O fortune_cookie.html && cat fortune_cookie.html
wget https://static.alta3.com/courses/microservices/fortune.html.tmp -O fortune.html && cat fortune.html
cd ..
mkdir files
wget https://static.alta3.com/courses/microservices/dragon-cafe.service -O files/dragon-cafe.service && cat files/dragon-cafe.service
sudo cp files/dragon-cafe.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start dragon-cafe.service
sudo systemctl enable dragon-cafe.service

