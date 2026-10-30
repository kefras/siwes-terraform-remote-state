# Terraform Remote State with AWS S3

## Overview

This project demonstrates Terraform remote state management using Amazon S3 as part of my SIWES Cloud and DevOps practical training.

## Technologies Used

- Terraform
- Amazon Web Services (AWS)
- Amazon S3
- AWS CLI
- Git and GitHub
- PowerShell

## Project Objectives

- Configure an AWS S3 backend for Terraform state management.
- Migrate Terraform state from local storage to S3.
- Enable state encryption.
- Configure S3-based state locking.
- Verify infrastructure consistency using Terraform plan.
- Follow Git and infrastructure security best practices.

## Remote State Architecture

Terraform CLI → AWS S3 Backend → Encrypted Terraform State

State locking is managed through the S3 backend's lockfile mechanism.

## Implementation

1. Configured AWS CLI authentication using a named profile.
2. Prepared an S3 bucket for remote state storage.
3. Configured the Terraform S3 backend.
4. Migrated the state to S3.
5. Verified that the remote state object exists.
6. Tested Terraform state locking.
7. Confirmed that Terraform reports no infrastructure changes.

## Validation

Commands used:

```powershell
terraform fmt -check
terraform validate
terraform plan -lock-timeout=10s
```

Terraform reported:

**No changes. Your infrastructure matches the configuration.**

## Security Practices

- Terraform state files excluded from Git.
- AWS credentials excluded from version control.
- S3 backend encryption enabled.
- State locking enabled.
- Terraform provider dependency lockfile tracked.

## Learning Outcomes

This exercise strengthened my understanding of infrastructure state management, AWS S3 backend configuration, Terraform locking, infrastructure validation, and Git-based version control.

## Author

Kefas Etiku Francis

Computer Science Student | Cloud & DevOps Engineering