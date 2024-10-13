#!/bin/bash

# Script to bring down Docker Compose services, pull latest images, and start them again

# Step 1: Bring down the current Docker Compose services
echo "Bringing down existing Docker Compose services..."
docker-compose -f docker-compose.local.yml down

# Step 2: Pull the latest images (if using an external registry or updated Dockerfiles)
echo "Pulling latest images..."
docker-compose -f docker-compose.local.yml pull

# Step 3: Build and run the services
echo "Building and starting Docker Compose services..."
docker-compose -f docker-compose.local.yml up --build