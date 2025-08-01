# IaC Security Scan Workflow

[![IaC Security Scan](https://github.com/0x1v4n/iac-security-scan-workflow/actions/workflows/iac-security.yml/badge.svg)](https://github.com/0x1v4n/iac-security-scan-workflow/actions/workflows/iac-security.yml)

This repository provides a **GitHub Actions** workflow for **parallel**, **fault-tolerant** security scanning of Infrastructure-as-Code (Terraform) using **Trivy**, **tfsec**, and **Checkov**.

## Features

- **Parallel Scanning:** Runs Trivy, tfsec, and Checkov in separate jobs.
- **Fault Tolerance:** Workflow completes and publishes results even if individual scans fail.
- **Automated Reporting:** Generates and commits a `SECURITY.md` file with aggregated findings.
- **Repo-wide Scan:** Automatically scans the entire repository, regardless of file structure.
- **SARIF Upload:** Submits Trivy SARIF to GitHub Code Scanning (requires GitHub Advanced Security for private repos).

## Prerequisites

- A GitHub repository (public or private).
- **GitHub Actions** enabled.
- (Optional) **GitHub Advanced Security** for code scanning SARIF upload.
- Terraform files in the repository (e.g., `.tf` files) for scanning.

## Usage

1. **Clone** this repository or copy the workflow to your own repo under `.github/workflows/iac-security.yml`.
2. **Add** a Terraform file (`main.tf` or others) to trigger the scan.
3. **Push** to any branch or open a pull request; the workflow will run automatically.
4. **Review** the generated `SECURITY.md` in the commit or as an artifact in the Actions UI.

## Keeping your local copy up-to-date with rebase

The workflow automatically commits updates to `SECURITY.md` in the same branch. To avoid merge conflicts when pulling new changes, run:

```bash
git pull --rebase
```

## Testing

A sample `main.tf` is provided in the repository root for testing purposes. It defines a public S3 bucket that should trigger warnings:

```hcl
provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "public_bucket" {
  bucket = "iac-scan-test-bucket"
  acl    = "public-read"

  tags = {
    Environment = "test"
  }
}
```

Commit and push this file to any branch to see the workflow in action.

## Contributing

Contributions, issues, and feature requests are welcome! Feel free to open a pull request or issue.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
