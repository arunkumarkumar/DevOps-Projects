#!/bin/bash

###############
#Author : Arunkumar
#Date : 02-08-2026
#
#Version: v1
#
# This script will report the AWS resource usage
################

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

set -x

# list s3 buckets
echo "Print the list of s3 buckets"
aws s3 ls > resourceTracker

# list ec2 instance
echo "Print the list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print the list of lambda"
aws lambda list-functions >> resourceTracker:q!

# list IAM Users
echo "Print the list of IAM Users"
aws iam list-users | jq '.Users[].UserName'
