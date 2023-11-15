# Project Summary

## Overview

This project involves creating a robust DevOps pipeline for a web application that interacts with AWS DynamoDB. The application extracts a secret string from the DynamoDB table `devops-challenge` based on a specific `codeName` ("thedoctor"). The pipeline is designed with a focus on automation, security, and efficient deployment using Docker and GitHub Actions.

## Key Features

1. **DynamoDB Interaction**: The application connects to AWS DynamoDB to retrieve a secret string.
2. **Docker Containerization**: The application is containerized using Docker, ensuring consistent environments and easy deployment.
3. **CI/CD with GitHub Actions**: Automated build and deployment pipeline using GitHub Actions, which includes building the Docker image and pushing it to DockerHub.
4. **Secure Credential Management**: AWS credentials are managed securely through GitHub Secrets and are used in the GitHub Actions pipeline for AWS interactions.
5. **Verification Script Execution**: Integration of a `verification.sh` script in the CI/CD pipeline for automated testing and verification.

## Technical Architecture

- **Flask Web Framework**: Used for creating the web application in Python.
- **Docker and Docker Compose**: For containerization and orchestration of the application.
- **GitHub Actions**: CI/CD platform used for automating build, push (to DockerHub), and deployment processes.
- **AWS SDK (Boto3)**: For interacting with the DynamoDB service.
- **AWS IAM**: Managing permissions for secure access to AWS resources.

## Implementation Steps

1. **Application Development**: Developed a Flask application to interact with DynamoDB using Boto3.
2. **Docker Integration**: Containerized the application using Docker, creating a `Dockerfile` and `docker-compose.yml`.
3. **CI/CD Pipeline Setup**: Configured GitHub Actions for automated building, pushing Docker images, and deploying.
4. **Security Best Practices**: Set up AWS IAM roles and policies for secure access and managed sensitive credentials using GitHub Secrets.
5. **Script Integration**: Included `verification.sh` in the CI/CD pipeline for automated verification as part of the deployment process.


