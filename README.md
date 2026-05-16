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



<img width="1364" height="566" alt="ecs-active cluster" src="https://github.com/user-attachments/assets/76feaa1e-d057-4bf4-b825-d5062382eda3" />
<img width="1366" height="768" alt="cicd" src="https://github.com/user-attachments/assets/63aaedf5-6c09-4e72-8ddd-7454533d4225" />
<img width="1360" height="585" alt="awload-balancer" src="https://github.com/user-attachments/assets/df02c3b8-2b22-42d6-a54a-2732e792f02f" />
<img width="1366" height="593" alt="autoscaling" src="https://github.com/user-attachments/assets/c65c0bcb-7d8e-4766-95d9-e0be1eb57830" />
<img width="1366" height="679" alt="container app running" src="https://github.com/user-attachments/assets/54a565a0-c481-44fb-8fcb-f93111a554ef" />
<img width="1366" height="723" alt="ecs service" src="https://github.com/user-attachments/assets/20a2ca79-fc54-4d74-b076-48c53b4d069e" />
<img width="1366" height="583" alt="aws-ecr" src="https://github.com/user-attachments/assets/c3d4e1e3-43e5-4f9d-99ed-34c4a7c0ce91" />
<img width="1366" height="595" alt="docker-image" src="https://github.com/user-attachments/assets/68da7ba6-ac9d-463a-9d92-d90ab0e1f341" />
<img width="1366" height="725" alt="docker-push" src="https://github.com/user-attachments/assets/0edfe9e9-419d-4182-ab4f-193a158cc246" />
<img width="1366" height="768" alt="ecr import" src="https://github.com/user-attachments/assets/bd092a5c-bb6b-453d-bd2b-41d9bac1b64a" />
<img width="1366" height="722" alt="terraform-aws" src="https://github.com/user-attachments/assets/57c6d2ee-afdc-46df-8648-001a5dec58a0" />




