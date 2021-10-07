#!/bin/bash

docker start nginx1-8000
docker start nginx3-8001
sleep 3
curl http://localhost:8000
sleep 3 
curl http://localhost:8001
