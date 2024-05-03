#!/bin/bash

# Define functions for each stage

ecr_check() {
    curl http://ecrlist-ps.computerlab.online/index.php
}

git_check() {
    curl https://github.com/TheAcademy/pss-orderbook-deploy
}

number_of_available_images() {
    curl "https://github.com/TheAcademy/sre-course-infra"
}

# Execute each stage

echo "=== ECR Check ==="
ecr_check

echo "=== GIT Check ==="
git_check

echo "=== Number of available images ==="
number_of_available_images
