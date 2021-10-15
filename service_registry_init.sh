wget https://static.alta3.com/courses/microservices/requirements.txt.03 -O requirements.txt && cat requirements.txt
python3 -m pip install -r requirements.txt
wget https://static.alta3.com/courses/microservices/service_registry.py -O service_registry.py && cat service_registry.py
sudo apt-get install sqlite3 -y
wget https://static.alta3.com/courses/microservices/service_registry.service -O files/service_registry.service && cat files/service_registry.service
sudo cp files/service_registry.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start service_registry.service
sudo systemctl enable service_registry.service
sudo systemctl status service_registry.service

