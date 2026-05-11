\# 🚀 Enterprise AWS ECS CI/CD Infrastructure



This project builds a production-ready cloud infrastructure using \*\*Terraform\*\*, \*\*AWS ECS Fargate\*\*, \*\*ALB\*\*, \*\*ECR\*\*, and \*\*GitHub Actions CI/CD pipeline\*\*.



\---



\## 🏗 Architecture



\- VPC with public/private subnets

\- Application Load Balancer (ALB)

\- ECS Fargate Cluster

\- Docker container deployed from ECR

\- Auto Scaling (ECS Service Scaling)

\- CI/CD pipeline using GitHub Actions



\---



\## 🔧 Tech Stack



\- AWS (ECS, ALB, VPC, ECR, IAM)

\- Terraform (Infrastructure as Code)

\- Docker

\- GitHub Actions (CI/CD)

\- NGINX container



\---



\## 🚀 CI/CD Flow



1\. Code pushed to GitHub

2\. GitHub Actions builds Docker image

3\. Image pushed to AWS ECR

4\. ECS service updates automatically

5\. ALB routes traffic to new version



\---



\## 📦 How to Deploy



`bash

terraform init

terraform apply

##Architecture diagram
<img width="1536" height="1024" alt="enterprise-aws-infrastructure" src="https://github.com/user-attachments/assets/52fb61cb-200a-49ea-a83d-a1ada7528fbe" />





