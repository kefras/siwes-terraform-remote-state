terraform {
  required_version = ">= 1.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "siwes_notes" {
  filename = "${path.module}/siwes-notes.txt"

  content = <<EOT
SIWES 1 - Week 12
Topic: Terraform Infrastructure as Code
Student: Kefas
Objective: Learn Terraform state management.
Status: Lab 2 - Understanding infrastructure changes.
Status: Lab 3 - Practising S3 state versioning.
EOT
}

output "file_location" {
  description = "Location of the generated SIWES notes"
  value       = local_file.siwes_notes.filename
}