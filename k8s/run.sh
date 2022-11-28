# create namespace 

kubectl apply -f namespace.yaml

#create all yaml files from each folder

kubectl apply -f elastic/

kubectl apply -f filebeat/

kubectl apply -f kibana/

kubectl apply -f logstash/

kubectl apply -f nginx/