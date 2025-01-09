resource "aws_amplify_app" "react_amplify" {
  name                     = var.app_name
  repository               = var.repository 
  access_token             = var.access_token
  enable_branch_auto_build = true

  build_spec = <<-EOT
    version: 0.1
    frontend:
      phases:
        preBuild:
          commands:
            - npm install
        build:
          commands:
            - npm run build
      artifacts:
        baseDirectory: build
        files:
          - '**/*'
      cache:
        paths:
          - node_modules/**/*
  EOT

  auto_branch_creation_config {
    enable_auto_build = true
  }
}

resource "aws_amplify_branch" "amplify_branch" {
  app_id            = aws_amplify_app.react_amplify.id
  branch_name       = var.branch_name
  enable_auto_build = true

}