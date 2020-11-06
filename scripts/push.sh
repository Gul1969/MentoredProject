
#! /bin/bash

sudo docker tag project_service1 localhost:8082/project_service1
sudo docker push localhost:8082/project_service1

sudo docker tag project_service2 localhost:8082/project_service2
sudo docker push localhost:8082/project_service2

sudo docker tag project_service3 localhost:8082/project_service3
sudo docker push localhost:8082/project_service3

sudo docker tag project_service4 localhost:8082/project_service4
sudo docker push localhost:8082/project_service4

