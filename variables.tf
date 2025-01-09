variable "region" {
  type        = string
  description = "AWS Region"
}

variable "access_token" {
  type        = string
  description = "The PAT from github"
}

variable "repository" {
  type        = string
  description = "URL for the React application in Github"
  default     = ""
}

variable "app_name" {
  type        = string
  description = "AWS Amplify App Name"
  default     = ""
}

variable "branch_name" {
  type        = string
  description = "AWS Amplify App Repo Branch Name"
  default     = "main"
}