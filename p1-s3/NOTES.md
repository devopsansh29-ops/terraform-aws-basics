# Notes: AWS S3 with Terraform

## What is S3?
- Amazon S3 (Simple Storage Service) is AWS's object storage.
- Stores data as objects inside buckets.
- Designed for 99.999999999% durability.

## Key Concepts
- **Bucket** → Container for objects.
- **Object** → File + metadata.
- **Key** → Unique identifier for object in bucket.
- **ACL (Access Control List)** → Controls access at bucket/object level.
- **Versioning** → Keeps multiple versions of an object.
- **Storage Classes:**
  - Standard (frequent access)
  - Intelligent-Tiering
  - Standard-IA (infrequent access)
  - Glacier (archival)

## Terraform Resources
- `aws_s3_bucket` → Creates an S3 bucket.
- `aws_s3_bucket_acl` → Sets access control (private/public-read).
- `random_id` → Generate unique suffix for bucket names.

## Commands
```bash
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve

