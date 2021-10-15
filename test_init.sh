wget https://static.alta3.com/courses/microservices/requirements.txt.02 -O requirements.txt && cat requirements.txt
python3 -m pip install -r requirements.txt
mkdir tests && cd tests
wget https://static.alta3.com/courses/microservices/link_test.py -O link_test.py && cat link_test.py

