# AWS Lambda with Docker, Terraform, and GitHub Actions

This repository contains the infrastructure and deployment code for an AWS Lambda function using Docker images, managed with Terraform, and automated with GitHub Actions. The Docker image is stored in AWS ECR, and the Terraform state is maintained in DynamoDB and S3.

## Overview

This project demonstrates the basic infra to deploy an AWS Lambda function using a Docker image. The infrastructure is managed with Terraform, and the deployment process is automated using GitHub Actions.

## Technologies Used

- **AWS Lambda**: Serverless compute service to run code in response to events.
- **Docker**: Used to create a containerized image of the Lambda function.
- **Terraform**: Infrastructure as Code (IaC) tool used to provision AWS resources.
- **GitHub Actions**: CI/CD platform used to automate the build and deployment process.
- **AWS ECR (Elastic Container Registry)**: Docker container registry to store the Lambda Docker image.
- **Python**: Programming language used to write the Lambda function.

## Prerequisites

Before you begin, ensure you have the following installed on your local machine:

- [Docker](https://www.docker.com/get-started)
- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [Python](https://www.python.org/downloads/)


## GitHub Actions CI/CD Pipeline

This repository includes a GitHub Actions workflow to automate the deployment process. The workflow is defined in `.github/workflows/*`.

### Key Steps in the Workflow

- **Checkout Code**: Checks out the repository code.
- **Set Up AWS Credentials**: Configures AWS credentials using GitHub Secrets.

## Writing the Lambda Function

The Lambda function code is written in Python and located in the root of the directory. Ensure you have all necessary dependencies listed in `requirements.txt`.