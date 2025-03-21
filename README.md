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

## Hello World Application
A simple Express.js application that responds with "Hello World!"

### Building and Running
1. Install dependencies: `npm install`
2. Run locally: `npm start`
3. Access at: http://localhost:3000

### Container Registry
The application is automatically built and pushed to Google Container Registry on push to main branch.
Image path: `us.gcr.io/gen-lang-client-0683956833/hello-world`
