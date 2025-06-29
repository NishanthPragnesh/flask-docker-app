# 🚀 Flask Docker App with Jenkins CI/CD & AWS Deployment

A simple Flask app deployed using Jenkins CI/CD pipeline with Docker, hosted on an AWS EC2 instance, and Docker images managed via Amazon ECR. CloudWatch monitors the logs and metrics for visibility.

---

## 🧰 Tech Stack

- **Flask** – Python web framework  
- **Docker** – Containerize the application  
- **Jenkins** – Automate CI/CD workflow  
- **AWS EC2** – Host Jenkins and deployed containers  
- **AWS ECR** – Store Docker images  
- **Amazon CloudWatch** – Monitor logs and metrics  

---

## ⚙️ CI/CD Pipeline Steps

1. **Clone Repository** – Jenkins pulls code from GitHub  
2. **Install Dependencies** – Installs Python packages via `pip`  
3. **Build Docker Image** – Containerize the Flask app  
4. **Push to AWS ECR** – Image is pushed to Amazon Elastic Container Registry  
5. **Deploy on EC2** – Docker container is run on the EC2 instance  
6. **Monitor via CloudWatch** – Logs and system metrics collected for monitoring  

---

## 🗺️ Architecture Flow Diagram 

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
     │     Build Docker Image     │
     │      Push to AWS ECR       │
     └─────────────┬──────────────┘
                   │
                   ▼
       ┌────────────────────────┐
       │  AWS Elastic Container │
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

---

## 🌐 Access URL

Visit the deployed Flask app at:  http://100.25.203.173:5000

     


