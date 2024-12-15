# Infrastructure as Code Repository

This repository contains Terraform code for provisioning and managing infrastructure.

## Description

This repository provides a framework for managing infrastructure using Terraform. It includes:

* **Modules:** Reusable modules for common infrastructure components (e.g., VPCs, subnets, security groups, EC2 instances).
* **Variables:** Customizable variables to control infrastructure configurations.
* **Outputs:** Outputs to retrieve information about the provisioned infrastructure.
* **Documentation:** Clear and concise documentation to guide users through the deployment process.

## Prerequisites

* **Terraform:** Install Terraform according to the instructions for your operating system. For more details, visit [Install Terraform](https://developer.hashicorp.com/terraform/install)

## Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/SOAT-46/infrastructure
   ```

2. **Navigate to the repository directory**

   ```bash
   cd infrastructure
   ```

3. **Initialize Terraform:**

   ```bash
   terraform init
   ```

4. **Plan the infrastructure changes:**

   ```bash
   terraform plan
   ```

5. **Apply the infrastructure changes:**

   ```bash
   terraform apply
   ```

5. **(Optional) Destroy the infrastructure**

   ```bash
   terraform destroy
   ```

## Contributing

Contributions are welcome! Please submit a pull request with a clear description of your changes.
