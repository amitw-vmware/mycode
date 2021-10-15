mkdir -p ~/dragon-cafe/microservices/menu/templates
cp ~/dragon-cafe/templates/menu.html ~/dragon-cafe/microservices/menu/templates
cp requirements.txt microservices/menu/
wget https://static.alta3.com/courses/microservices/menu.py.01 -O microservices/menu/menu.py && cat microservices/menu/menu.py
python3 microservices/menu/menu.py &
sleep 3
kill $!

