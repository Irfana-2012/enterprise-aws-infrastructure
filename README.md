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

## Screenshots
<img width="1366" height="768" alt="aws-ecs-cluster-running" src="https://github.com/user-attachments/assets/66bbd6c2-7d8d-4278-b7cb-066730745f5d" />
<img width="1366" height="768" alt="ecs service" src="https://github.com/user-attachments/assets/c69026be-7ed8-43c9-891c-fec233ff05cd" />
<img width="1366" height="768" alt="docker-push" src="https://github.com/user-attachments/assets/f0b795c3-1370-4cc0-891a-0c9122bfd45c" />
<img width="1366" height="768" alt="container app running" src="https://github.com/user-attachments/assets/6296c6c9-227d-4fd1-9a62-c6d0515e4f14" />
<img width="1366" height="768" alt="autoscaling" src="https://github.com/user-attachments/assets/4eb86613-f58e-4a39-8047-02449cdc881a" />
<img width="1366" height="768" alt="app-load-balancer" src="https://github.com/user-attachments/assets/ffe9b8b8-5135-4e9c-b276-edc01982ccc3" />






