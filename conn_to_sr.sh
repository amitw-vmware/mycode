sudo systemctl status service_registry.service --no-pager
wget https://static.alta3.com/courses/microservices/registry_patch.py -O registry_patch.py && cat registry_patch.py
python3 registry_patch.py
wget https://static.alta3.com/courses/microservices/dragon_mon_w_registry.py -O dragon_mon_w_registry.py && cat dragon_mon_w_registry.py
export DRAGON_PORT=2225
python3 dragon_mon_w_registry.py &
sleep 3
kill $!

