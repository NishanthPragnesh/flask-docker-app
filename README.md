🚀 Flask Docker App with Jenkins CI/CD & AWS ECR + EC2 Deployment
This project demonstrates a complete CI/CD pipeline for a simple Flask application using Jenkins, Docker, AWS EC2, and Amazon ECR. The app is automatically built, containerized, and deployed on an EC2 instance using Jenkins.

📂 Tech Stack
Flask – Lightweight Python web framework

Docker – Containerize the app

Jenkins – Automate build, test, and deployment

AWS EC2 – Host Jenkins & deployed container

AWS ECR – Docker image storage

Amazon CloudWatch – Monitoring logs and metrics

⚙️ Pipeline Steps
Git Clone – Jenkins pulls code from GitHub repo

Install Requirements – Installs Python dependencies

Docker Build – Creates Docker image

Push to ECR – Stores image in AWS Elastic Container Registry

Run on EC2 – Deploys the container with exposed port

Monitor with CloudWatch – Logs & metrics collected

🗺️ Architecture Flow Diagram

                ┌────────────┐
                │  GitHub    │
                │ Repository │
                └────┬───────┘
                     │
                     ▼
               ┌────────────┐
               │  Jenkins   │  (on EC2)
               │   Server   │
               └────┬───────┘
                    │
      ┌─────────────┴──────────────┐
      │    Build Docker Image      │
      │      Push to AWS ECR       │
      └─────────────┬──────────────┘
                    │
                    ▼
        ┌────────────────────────┐
        │ AWS Elastic Container  │
        │        Registry (ECR)  │
        └────────────────────────┘
                   │
                   ▼
         ┌────────────────────┐
         │   Docker Run App   │
         │   on same EC2      │
         └────────────────────┘
                   │
                   ▼
          ┌─────────────────┐
          │  CloudWatch     │
          │(Logs & Metrics) │
          └─────────────────┘

🌐 Access
Visit the app on:
http://100.25.203.173:5000
