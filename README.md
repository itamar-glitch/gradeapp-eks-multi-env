# GradeApp EKS Multi-Environment Deployment

This repository contains Terraform configurations for deploying GradeApp on AWS EKS across multiple environments (staging, production).

## Project Structure

```
gradeapp-eks-multi-env/
├── modules/                  # Reusable Terraform modules
│   ├── vpc/                 # VPC module
│   ├── eks/                 # EKS cluster module
│   └── nodes/               # EKS node group module
├── envs/                    # Environment-specific configurations
│   ├── stage/              # Staging environment
│   └── prod/               # Production environment
├── deployment/              # Kubernetes manifests
│   ├── deployment.yaml     # Application deployment
│   ├── service.yaml        # Kubernetes service
│   └── ingress.yaml        # Ingress configuration
└── helm-provider.tf        # Helm provider configuration
```

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform (v1.0.0 or later)
- kubectl
- helm

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/gradeapp-eks-multi-env.git
   cd gradeapp-eks-multi-env
   ```

2. Configure environment variables:
   ```bash
   export AWS_REGION=us-east-2
   export TF_VAR_environment=stage  # or prod
   ```

3. Initialize Terraform:
   ```bash
   cd envs/stage  # or prod
   terraform init
   ```

4. Apply the configuration:
   ```bash
   terraform apply
   ```

5. Deploy the application:
   ```bash
   aws eks update-kubeconfig --name stage-gradeapp_stage --region us-east-2
   kubectl apply -f ../deployment/
   ```

## Environment Configuration

Each environment (stage/prod) has its own:
- Variable definitions
- Terraform state
- Resource configurations

## Security Notes

- Never commit `.tfstate` files
- Keep sensitive variables in environment variables or secure secret management
- Use IAM roles with least privilege

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

MIT License 