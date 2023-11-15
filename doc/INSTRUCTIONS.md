# Instructions for Using the Repository

This document provides detailed instructions for setting up, running, testing, and understanding the workflow of the project. The project is designed to interact with AWS DynamoDB to retrieve a secret string and is containerized for easy deployment.

## Prerequisites

- Docker installed on your machine.
- An AWS account with credentials (Access Key ID and Secret Access Key).
- Git and GitHub account for version control and workflow automation.
- Basic understanding of Docker, AWS services, and GitHub Actions.

## Setup

1. **Clone the Repository**:
   ```bash
   git clone [repository-url]
   cd [repository-name]

2. **Configure AWS Credentials**:

    Set up your AWS credentials as environment variables.
    Alternatively, configure them using AWS CLI
3. **Install Dependencies**:

    pip install -r src/requirements.txt
4. **Running the Application Locally**

    docker build -t your-image-name .
5. **Run the Application using Docker Compose**:
    docker-compose up
    