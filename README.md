## Introduction
Infrastructure as code to deploy a React application to AWS as an Amplify service.

## Pre-Requisites 
1. Install AWS & Terraform CLI
2. IAM User with secret access keys (Reccomened by AWS not to use the root user). This will need the ```AdministratorAccess-Amplify``` permission policy at minimum
3. Obtain your personal Github PAT

## Steps
1. Use the IAM user via the AWS CLI. To set this, type
``` aws configure ``` and enter the the Access Key ID (Accessible from IAM->Users->Access Key) and the Access Secret Key (Can be viewed only once when generated).
2. Create a values.tfvars with the following properties
```
region       = "" # Chosen region
access_token = "" # Github PAT
repository   = "" # Url link
app_name     = "" # Name of repo
branch_name  = "" # Branch to deploy
```


## Commands

View changes without actioning
```
terraform plan -var-file=values.tfvars
```

Apply changes. Once this completes the application will be viewable in the AWS console
```
terraform apply -var-file=values.tfvars
``` 

Deletes the Amplify app from AWS console.
```
terraform destroy -var-file=values.tfvars
```

## BUGS TODO

- Apply works as expected, however this does not kick off a build automatically.