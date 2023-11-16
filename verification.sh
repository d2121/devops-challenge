#!/bin/bash

# Run Project
docker-compose up --build -d
sleep 5

# Query results
response=$(curl -s http://127.0.0.1:5000/secret)
secret_code=$(echo $response | jq -r '.secret_code')
if [ "$secret_code" == "null" ]; then
    echo "secret_code = null"
else
    echo "secret_code = $secret_code"
fi

curl 127.0.0.1:5000/health | jq '.'

# Destroy 
docker-compose down

