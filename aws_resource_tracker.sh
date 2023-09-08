#!/bin/bash

##################
# Author: Anil
# Date: 8th Sept
#
# Version: v1
#
# Description: This script helps us to track aws services like S3, EC2, IAM
##################
set -x
# listing S3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# listing EC2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances
# If you want to get only instance id then we need to use jq which is called json query
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# listing IAM Users
echo "print list of IAM users"
aws iam list-users

