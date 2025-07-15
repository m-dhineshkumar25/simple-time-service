# 🕒 SimpleTimeService

A minimalist microservice built with Flask that returns the current timestamp and the IP address of the visitor.

---

## 🚀 How It Works

When you access the `/` route, it responds with a JSON object like this:

```json
{
  "timestamp": "2025-07-11T10:05:00Z",
  "ip": "172.17.0.1"
}
🐳 Docker Instructions
✅ Build the Docker image:
bash
Copy code
docker build -t simple-time-service .
✅ Run the container:
bash
Copy code
docker run -p 5000:5000 simple-time-service
Then, open in your browser:
http://localhost:5000

☁️ Terraform Deployment on AWS (ECS with Fargate)
✅ Prerequisites
AWS CLI installed: Install AWS CLI

Terraform installed: Install Terraform

AWS credentials configured locally using:

bash
Copy code
aws configure
✅ Steps to Deploy
Navigate into the terraform/ folder and run:

bash
Copy code
cd terraform
terraform init
terraform plan
terraform apply
Once applied, copy the Load Balancer DNS name from the Terraform output and open it in your browser to access the deployed app.

🧼 Clean Up AWS Resources
To avoid extra charges:

bash
Copy code
cd terraform
terraform destroy
