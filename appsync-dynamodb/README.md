# AWS AppSync to Amazon DynamoDB

This pattern creates an AppSync API with a schema and a resolver to a DynamoDB table.

## Deployment Instructions
1. Change directory to the pattern directory:
    ```
    cd appsync-dynamodb
    ```
2. From the command line, use AWS SAM to deploy the AWS resources for the pattern as specified in the template.yml file:
    ```
    sam deploy --guided
    ```
3. During the prompts:
    * Enter a stack name
    * Enter the desired AWS Region
    * Allow SAM CLI to create IAM roles with the required permissions.

## How it works
This template creates an AppSync api that uses a DynamoDB resolver. 
The demo application is a simple notes application.

## Testing

The easiest way to test the AppSync API is with the AppSync console at 
https://us-west-2.console.aws.amazon.com/appsync/home (change to your appropriate region)
![AppSync Console](./console.png)

## Cleanup
 
1. Delete the stack
    ```bash
    aws cloudformation delete-stack --stack-name STACK_NAME
    ```
1. Confirm the stack has been deleted
    ```bash
    aws cloudformation list-stacks --query "StackSummaries[?contains(StackName,'STACK_NAME')].StackStatus"
    ```
----
Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.

SPDX-License-Identifier: MIT-0
