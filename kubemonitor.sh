#!/bin/bash

# Function to monitor ECR repository
monitor_ecr() {
    # Check if the ECR URL is reachable
    
    ecr_status=$(curl -s -o ecr_status.log -w "%{http_code}" http://ecrlist-ps.computerlab.online/index.php)

    if [ "$ecr_status" = "200" ]; then
        echo "ECR Repository is accessible."
    else
        echo "ECR Repository is not accessible."
    fi
}

# Function to monitor Git repository
monitor_git() {
    # Check if the Git repository is reachable
    curl -s -o git_status.log https://github.com/TheAcademy/pss-orderbook-deploy
    git_status=$(cat git_status.log | grep "GitHub")

    if [ -n "$git_status" ]; then
        echo "Git Repository is accessible."
    else
        echo "Git Repository is not accessible."
    fi
}

# Call monitoring functions
monitor_ecr
monitor_git

