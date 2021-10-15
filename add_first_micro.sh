wget https://static.alta3.com/courses/microservices/passthrough.py -O passthrough.py && cat passthrough.py
cd ~/dragon-cafe
wget https://static.alta3.com/courses/microservices/dragon_micro_menu.py -O dragon_micro_menu.py && cat dragon_micro_menu.py
export DRAGON_PORT=2225
python3 dragon_micro_menu.py &
sleep 3
kill $!

