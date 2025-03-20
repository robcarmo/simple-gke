# simple-gke

## GKE Cluster Configuration

This repository contains Terraform configuration for a basic GKE cluster with:
- e2-medium machine type (2 vCPU)
- us-west1 region
- 3 nodes with 16GB boot disk each
- Default network route for internet gateway

### Prerequisites
- Google Cloud Project with required APIs enabled
- Terraform installed
- Google Cloud credentials configured

### Usage
```bash
cd terraform
terraform init
terraform plan
terraform apply
```
