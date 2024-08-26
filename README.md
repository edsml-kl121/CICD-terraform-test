# GCP Bucket Creation with Terraform and GitHub Actions

This project uses Terraform to create a Google Cloud Storage bucket named 'mew' and upload a file named 'text.txt' to it. The process is automated using GitHub Actions.

## Prerequisites

- A Google Cloud Platform account
- A GCP project
- A service account key with necessary permissions, stored as a GitHub secret named `GCP_SA_KEY`

## Structure

- `.github/workflows/terraform.yml`: GitHub Actions workflow file
- `terraform/`: Contains all Terraform configuration files
- `text.txt`: The file to be uploaded to the GCP bucket

## Usage

1. Clone this repository
2. Modify the `project_id` in `terraform/variables.tf` to match your GCP project ID
3. Ensure your `text.txt` file is in the root of the repository
4. Push changes to the `main` branch to trigger the GitHub Actions workflow

The workflow will initialize Terraform, plan the changes, and apply them to create the bucket and upload the file.

## Outputs

After successful application, you can find the bucket URL and the uploaded file URL in the Terraform output.