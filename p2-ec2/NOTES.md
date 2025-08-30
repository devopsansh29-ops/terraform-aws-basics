
---

# 📘 `p2-ec2/NOTES.md`

```markdown
# Notes: AWS EC2 with Terraform

## What is EC2?
- Amazon EC2 (Elastic Compute Cloud) provides virtual servers (instances).
- On-demand, scalable compute in the cloud.

## Key Concepts
- **AMI (Amazon Machine Image):** Template for OS (Ubuntu, Amazon Linux, etc).
- **Instance Type:** Hardware configuration (CPU, RAM). Example: t2.micro (1 vCPU, 1GB RAM).
- **Key Pair:** SSH key for login.
- **Security Group:** Virtual firewall for inbound/outbound rules.
- **Elastic IP:** Static public IP address.

## Terraform Resources
- `aws_instance` → Creates EC2 instance.
- Arguments:
  - `ami` → Which OS image to use.
  - `instance_type` → Size of instance.
  - `tags` → Labels for organization.
- Outputs:
  - `instance_id` → Unique ID of EC2.
  - `public_ip` → Public IP for SSH/web access.

## Commands
```bash
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve

