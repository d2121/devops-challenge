#!/bin/bash

# Run Project
docker-compose up --build -d
sleep 5

# Query results

response=$(curl -s 127.0.0.1:5000/secret)

if [[ $? -eq 0 ]]; then
    echo "$response" | jq '.'
else
    echo "Failed to fetch the secret."
fi

curl 127.0.0.1:5000/health | jq '.'

# Destroy 
docker-compose down

