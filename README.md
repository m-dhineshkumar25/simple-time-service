# 🕒 SimpleTimeService

A minimalist microservice built with Flask that returns the current timestamp and the IP address of the visitor.

---

## 🔁 Example JSON Response

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
AWS CLI: Install AWS CLI

Terraform: Install Terraform

AWS credentials configured locally:

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
Once applied, the Load Balancer DNS will be shown in the output. Open that in your browser to access the app.

🧼 Clean Up Resources (IMPORTANT)
To avoid AWS charges, destroy the resources when done:

bash
Copy code
cd terraform
terraform destroy
