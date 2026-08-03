# AWS Resource Tracker

A simple Bash script that retrieves and displays AWS resources using the AWS CLI. This project demonstrates basic shell scripting, AWS CLI usage, and JSON parsing with `jq`.

## Features

- List all Amazon S3 buckets
- List all Amazon EC2 instance IDs
- List all AWS Lambda functions
- List all IAM users
- Parse AWS CLI JSON output using `jq`

## Prerequisites

Before running the script, ensure the following are installed:

- AWS CLI v2
- jq
- Bash
- Configured AWS credentials

Verify the installations:

```bash
aws --version
jq --version
```

Configure AWS credentials if not already configured:

```bash
aws configure
```

## Project Structure

```
AWS-Resource-Tracker/
│
├── aws_resource_tracker.sh
└── README.md
```

## How to Run

Make the script executable:

```bash
chmod +x aws_resource_tracker.sh
```

Run the script:

```bash
./aws_resource_tracker.sh
```

## Sample Output

```
Print the list of S3 buckets

my-demo-bucket

Print the list of EC2 instances

i-060c6ff9037d9ab94

Print the list of Lambda functions

my-lambda-function

Print the list of IAM Users

Arunkumar
```

## AWS Services Used

- Amazon S3
- Amazon EC2
- AWS Lambda
- AWS Identity and Access Management (IAM)

## Technologies Used

- Bash Shell Scripting
- AWS CLI
- jq
- Linux (WSL/Ubuntu)

## Learning Objectives

This project helps understand:

- Bash scripting fundamentals
- AWS CLI commands
- AWS authentication
- JSON parsing using jq
- Linux automation

## Author

**Arun Kumar**



GitHub: https://github.com/arunkumarkumar
