🚀 AWS EC2 Web Server Deployment with Terraform
A simple Infrastructure as Code (IaC) project that deploys a fully functional web server on AWS using Terraform.
📋 Overview
This project demonstrates how to deploy cloud infrastructure using Terraform to create:

AWS EC2 instance with automatic web server setup
Security groups with proper access controls
Automated Apache installation and configuration
Complete Infrastructure as Code implementation

🏗️ Architecture
Internet
    |
    v
Security Group (HTTP/SSH)
    |
    v
EC2 Instance (t3.micro)
    |
    v
Apache Web Server
🛠️ Technologies Used

Terraform - Infrastructure as Code
AWS - Cloud Provider
Apache HTTP Server - Web Server
Amazon Linux 2 - Operating System

📁 Project Structure
ec2-deployment/
├── main.tf                 # Main Terraform configuration
├── terraform.tfstate       # Terraform state file (auto-generated)
├── terraform.tfstate.backup # State backup (auto-generated)
└── .terraform/             # Terraform working directory (auto-generated)
🚀 Quick Start
Prerequisites

Terraform installed (>= 1.0)
AWS CLI configured with credentials
EC2 Key Pair created in AWS Console

Deployment Steps

Clone the repository
bashgit clone <your-repo-url>
cd ec2-deployment

Update the key pair name
bash# Edit main.tf and update the key_name value
key_name = "your-key-pair-name"

Initialize Terraform
bashterraform init

Plan the deployment
bashterraform plan

Deploy the infrastructure
bashterraform apply
Type yes when prompted.
Access your web server

Visit the website_url output in your browser
SSH using the ssh_command output



📊 Outputs
After successful deployment, you'll get:

instance_id - EC2 instance identifier
instance_public_ip - Public IP address
instance_public_dns - Public DNS name
website_url - Direct link to your website
ssh_command - Ready-to-use SSH command

🔧 Configuration Options
Instance Type
Change the instance type by modifying main.tf:
hclinstance_type = "t3.small"  # or t3.medium, etc.
Region
Update the AWS region:
hclprovider "aws" {
  region = "us-west-2"  # Change to your preferred region
}
Security Groups
Modify ingress rules in the aws_security_group resource to customize access.
🔒 Security Features

SSH Access: Port 22 (restrict CIDR blocks for production)
HTTP Access: Port 80 for web traffic
HTTPS Ready: Port 443 configured
Outbound Traffic: All outbound traffic allowed

💰 Cost Estimation

EC2 t3.micro: Free tier eligible (750 hours/month)
Data Transfer: Minimal for testing
Estimated Monthly Cost: $0 (within free tier limits)

🧹 Cleanup
To avoid ongoing charges, destroy the infrastructure when done:
bashterraform destroy
Type yes to confirm deletion of all resources.
📝 What Gets Installed
The user data script automatically:

Updates the system packages
Installs Apache HTTP Server
Starts and enables Apache service
Creates a custom welcome page
Displays the instance ID on the webpage

🎯 Use Cases
This project is perfect for:

Learning Terraform and Infrastructure as Code
Quick web server deployment
Development and testing environments
Demonstrating AWS automation
Building CI/CD pipeline foundations

🔄 Advanced Usage
Multiple Environments
Create environment-specific configurations:
bash# Development
terraform workspace new dev
terraform apply

# Production
terraform workspace new prod
terraform apply
Custom Web Content
Modify the user data script in main.tf to deploy your own web content.
Monitoring
Add CloudWatch alarms and monitoring by extending the Terraform configuration.
🐛 Troubleshooting
Common Issues

Key Pair Not Found

Ensure your EC2 key pair exists in the correct AWS region
Update the key_name value in main.tf


Permission Errors

Verify AWS CLI is configured: aws sts get-caller-identity
Ensure your AWS user has EC2 permissions


Website Not Loading

Wait 2-3 minutes for the server to fully initialize
Check security group rules allow HTTP traffic


SSH Connection Issues

Verify key file permissions: chmod 400 your-key.pem
Check security group allows SSH from your IP



📚 Learning Resources

Terraform Documentation
AWS EC2 User Guide
Infrastructure as Code Best Practices

🤝 Contributing

Fork the repository
Create a feature branch (git checkout -b feature/amazing-feature)
Commit your changes (git commit -m 'Add amazing feature')
Push to the branch (git push origin feature/amazing-feature)
Open a Pull Request

📄 License
This project is licensed under the MIT License - see the LICENSE file for details.
🙋‍♂️ Support
If you have questions or run into issues:

Open an Issue
Check the Discussions tab
Review the troubleshooting section above

⭐ Acknowledgments

AWS for providing the cloud infrastructure
Terraform by HashiCorp for Infrastructure as Code
Amazon Linux team for the stable AMI


Built with ❤️ using Infrastructure as Code principles
