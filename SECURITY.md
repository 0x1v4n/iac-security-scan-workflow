# IaC Security Report – 2025-08-05 08:26:50

## Introduction
This file is generated automatically by the **IaC Security Scan** workflow.
It aggregates Infrastructure-as-Code (Terraform) security findings on each push and pull request.

The sections below are refreshed on every run:
- **Trivy** – Vulnerabilities & misconfigurations (HTML)
- **Tfsec** – Terraform-focused static analysis
- **Checkov** – Policy-based compliance checks

## Notes
- **Private repositories:** Uploading SARIF to the Code Scanning dashboard requires GitHub Advanced Security. If that step fails, this Markdown report is still generated and committed.
- Scans run recursively from the repository root to accommodate varied layouts.
- Static analysis may report acceptable configurations; document justified suppressions.

## References
- [Trivy – IaC security scanner](https://github.com/aquasecurity/trivy)
- [Tfsec – Terraform static analysis](https://github.com/aquasecurity/tfsec)
- [Checkov – Infrastructure as Code policy scanning](https://github.com/bridgecrewio/checkov)
- [GitHub Code Scanning documentation](https://docs.github.com/en/code-security/code-scanning)

---

## Trivy Report
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style>
      * {
        font-family: Arial, Helvetica, sans-serif;
      }
      h1 {
        text-align: center;
      }
      .group-header th {
        font-size: 200%;
      }
      .sub-header th {
        font-size: 150%;
      }
      table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
        white-space: nowrap;
        padding: .3em;
      }
      table {
        margin: 0 auto;
      }
      .severity {
        text-align: center;
        font-weight: bold;
        color: #fafafa;
      }
      .severity-LOW .severity { background-color: #5fbb31; }
      .severity-MEDIUM .severity { background-color: #e9c600; }
      .severity-HIGH .severity { background-color: #ff8800; }
      .severity-CRITICAL .severity { background-color: #e40000; }
      .severity-UNKNOWN .severity { background-color: #747474; }
      .severity-LOW { background-color: #5fbb3160; }
      .severity-MEDIUM { background-color: #e9c60060; }
      .severity-HIGH { background-color: #ff880060; }
      .severity-CRITICAL { background-color: #e4000060; }
      .severity-UNKNOWN { background-color: #74747460; }
      table tr td:first-of-type {
        font-weight: bold;
      }
      .links a,
      .links[data-more-links=on] a {
        display: block;
      }
      .links[data-more-links=off] a:nth-of-type(1n+5) {
        display: none;
      }
      a.toggle-more-links { cursor: pointer; }
    </style>
    <title>. - Trivy Report - 2025-08-05 08:26:31.722700972 +0000 UTC m=+1.908355605 </title>
    <script>
      window.onload = function() {
        document.querySelectorAll('td.links').forEach(function(linkCell) {
          var links = [].concat.apply([], linkCell.querySelectorAll('a'));
          [].sort.apply(links, function(a, b) {
            return a.href > b.href ? 1 : -1;
          });
          links.forEach(function(link, idx) {
            if (links.length > 3 && 3 === idx) {
              var toggleLink = document.createElement('a');
              toggleLink.innerText = "Toggle more links";
              toggleLink.href = "#toggleMore";
              toggleLink.setAttribute("class", "toggle-more-links");
              linkCell.appendChild(toggleLink);
            }
            linkCell.appendChild(link);
          });
        });
        document.querySelectorAll('a.toggle-more-links').forEach(function(toggleLink) {
          toggleLink.onclick = function() {
            var expanded = toggleLink.parentElement.getAttribute("data-more-links");
            toggleLink.parentElement.setAttribute("data-more-links", "on" === expanded ? "off" : "on");
            return false;
          };
        });
      };
    </script>
  </head>
  <body>
    <h1>. - Trivy Report - 2025-08-05 08:26:31.722722923 +0000 UTC m=+1.908377546</h1>
    <table>
      <tr class="group-header"><th colspan="6">terraform</th></tr>
      <tr><th colspan="6">No Vulnerabilities found</th></tr>
      <tr><th colspan="6">No Misconfigurations found</th></tr>
      <tr class="group-header"><th colspan="6">terraform</th></tr>
      <tr><th colspan="6">No Vulnerabilities found</th></tr>
      <tr class="sub-header">
        <th>Type</th>
        <th>Misconf ID</th>
        <th>Check</th>
        <th>Severity</th>
        <th>Message</th>
      </tr>
      <tr class="severity-HIGH">
        <td class="misconf-type">Terraform Security Check</td>
        <td>AVD-AWS-0086</td>
        <td class="misconf-check">S3 Access block should block public ACL</td>
        <td class="severity">HIGH</td>
        <td class="link" data-more-links="off"  style="white-space:normal;">
          No public access block so not blocking public acls
          <br>
            <a href="https://avd.aquasec.com/misconfig/avd-aws-0086">https://avd.aquasec.com/misconfig/avd-aws-0086</a>
          </br>
        </td>
      </tr>
      <tr class="severity-HIGH">
        <td class="misconf-type">Terraform Security Check</td>
        <td>AVD-AWS-0087</td>
        <td class="misconf-check">S3 Access block should block public policy</td>
        <td class="severity">HIGH</td>
        <td class="link" data-more-links="off"  style="white-space:normal;">
          No public access block so not blocking public policies
          <br>
            <a href="https://avd.aquasec.com/misconfig/avd-aws-0087">https://avd.aquasec.com/misconfig/avd-aws-0087</a>
          </br>
        </td>
      </tr>
      <tr class="severity-HIGH">
        <td class="misconf-type">Terraform Security Check</td>
        <td>AVD-AWS-0088</td>
        <td class="misconf-check">Unencrypted S3 bucket.</td>
        <td class="severity">HIGH</td>
        <td class="link" data-more-links="off"  style="white-space:normal;">
          Bucket does not have encryption enabled
          <br>
            <a href="https://avd.aquasec.com/misconfig/avd-aws-0088">https://avd.aquasec.com/misconfig/avd-aws-0088</a>
          </br>
        </td>
      </tr>
      <tr class="severity-LOW">
        <td class="misconf-type">Terraform Security Check</td>
        <td>s3-bucket-logging</td>
        <td class="misconf-check">S3 Bucket Logging</td>
        <td class="severity">LOW</td>
        <td class="link" data-more-links="off"  style="white-space:normal;">
          Bucket has logging disabled
          <br>
            <a href="https://avd.aquasec.com/misconfig/s3-bucket-logging">https://avd.aquasec.com/misconfig/s3-bucket-logging</a>
          </br>
        </td>
      </tr>
      <tr class="severity-MEDIUM">
        <td class="misconf-type">Terraform Security Check</td>
        <td>AVD-AWS-0090</td>
        <td class="misconf-check">S3 Data should be versioned</td>
        <td class="severity">MEDIUM</td>
        <td class="link" data-more-links="off"  style="white-space:normal;">
          Bucket does not have versioning enabled
          <br>
            <a href="https://avd.aquasec.com/misconfig/avd-aws-0090">https://avd.aquasec.com/misconfig/avd-aws-0090</a>
          </br>
        </td>
      </tr>
      <tr class="severity-HIGH">
        <td class="misconf-type">Terraform Security Check</td>
        <td>AVD-AWS-0091</td>
        <td class="misconf-check">S3 Access Block should Ignore Public ACL</td>
        <td class="severity">HIGH</td>
        <td class="link" data-more-links="off"  style="white-space:normal;">
          No public access block so not blocking public acls
          <br>
            <a href="https://avd.aquasec.com/misconfig/avd-aws-0091">https://avd.aquasec.com/misconfig/avd-aws-0091</a>
          </br>
        </td>
      </tr>
      <tr class="severity-HIGH">
        <td class="misconf-type">Terraform Security Check</td>
        <td>AVD-AWS-0092</td>
        <td class="misconf-check">S3 Buckets not publicly accessible through ACL.</td>
        <td class="severity">HIGH</td>
        <td class="link" data-more-links="off"  style="white-space:normal;">
          Bucket has a public ACL: &#34;public-read&#34;
          <br>
            <a href="https://avd.aquasec.com/misconfig/avd-aws-0092">https://avd.aquasec.com/misconfig/avd-aws-0092</a>
          </br>
        </td>
      </tr>
      <tr class="severity-HIGH">
        <td class="misconf-type">Terraform Security Check</td>
        <td>AVD-AWS-0093</td>
        <td class="misconf-check">S3 Access block should restrict public bucket to limit access</td>
        <td class="severity">HIGH</td>
        <td class="link" data-more-links="off"  style="white-space:normal;">
          No public access block so not restricting public buckets
          <br>
            <a href="https://avd.aquasec.com/misconfig/avd-aws-0093">https://avd.aquasec.com/misconfig/avd-aws-0093</a>
          </br>
        </td>
      </tr>
      <tr class="severity-LOW">
        <td class="misconf-type">Terraform Security Check</td>
        <td>AVD-AWS-0094</td>
        <td class="misconf-check">S3 buckets should each define an aws_s3_bucket_public_access_block</td>
        <td class="severity">LOW</td>
        <td class="link" data-more-links="off"  style="white-space:normal;">
          Bucket does not have a corresponding public access block.
          <br>
            <a href="https://avd.aquasec.com/misconfig/avd-aws-0094">https://avd.aquasec.com/misconfig/avd-aws-0094</a>
          </br>
        </td>
      </tr>
      <tr class="severity-HIGH">
        <td class="misconf-type">Terraform Security Check</td>
        <td>AVD-AWS-0132</td>
        <td class="misconf-check">S3 encryption should use Customer Managed Keys</td>
        <td class="severity">HIGH</td>
        <td class="link" data-more-links="off"  style="white-space:normal;">
          Bucket does not encrypt data with a customer managed key.
          <br>
            <a href="https://avd.aquasec.com/misconfig/avd-aws-0132">https://avd.aquasec.com/misconfig/avd-aws-0132</a>
          </br>
        </td>
      </tr>
    </table>
  </body>
</html>

## tfsec Scan Results

```

======================================================
tfsec is joining the Trivy family

tfsec will continue to remain available 
for the time being, although our engineering 
attention will be directed at Trivy going forward.

You can read more here: 
https://github.com/aquasecurity/tfsec/discussions/1994
======================================================

Result #1 HIGH No public access block so not blocking public acls 
────────────────────────────────────────────────────────────────────────────────
  main.tf:13-20
────────────────────────────────────────────────────────────────────────────────
   13    resource "aws_s3_bucket" "public_bucket" {
   14      bucket = "iac-scan-test-bucket"
   15      acl    = "public-read"
   16    
   17      tags = {
   18        Environment = "test"
   19      }
   20    }
────────────────────────────────────────────────────────────────────────────────
          ID aws-s3-block-public-acls
      Impact PUT calls with public ACLs specified can make objects public
  Resolution Enable blocking any PUT calls with a public ACL specified

  More Information
  - https://aquasecurity.github.io/tfsec/v1.28.14/checks/aws/s3/block-public-acls/
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block#block_public_acls
────────────────────────────────────────────────────────────────────────────────


Result #2 HIGH No public access block so not blocking public policies 
────────────────────────────────────────────────────────────────────────────────
  main.tf:13-20
────────────────────────────────────────────────────────────────────────────────
   13    resource "aws_s3_bucket" "public_bucket" {
   14      bucket = "iac-scan-test-bucket"
   15      acl    = "public-read"
   16    
   17      tags = {
   18        Environment = "test"
   19      }
   20    }
────────────────────────────────────────────────────────────────────────────────
          ID aws-s3-block-public-policy
      Impact Users could put a policy that allows public access
  Resolution Prevent policies that allow public access being PUT

  More Information
  - https://aquasecurity.github.io/tfsec/v1.28.14/checks/aws/s3/block-public-policy/
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block#block_public_policy
────────────────────────────────────────────────────────────────────────────────


Result #3 HIGH Bucket does not have encryption enabled 
────────────────────────────────────────────────────────────────────────────────
  main.tf:13-20
────────────────────────────────────────────────────────────────────────────────
   13    resource "aws_s3_bucket" "public_bucket" {
   14      bucket = "iac-scan-test-bucket"
   15      acl    = "public-read"
   16    
   17      tags = {
   18        Environment = "test"
   19      }
   20    }
────────────────────────────────────────────────────────────────────────────────
          ID aws-s3-enable-bucket-encryption
      Impact The bucket objects could be read if compromised
  Resolution Configure bucket encryption

  More Information
  - https://aquasecurity.github.io/tfsec/v1.28.14/checks/aws/s3/enable-bucket-encryption/
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#enable-default-server-side-encryption
────────────────────────────────────────────────────────────────────────────────


Result #4 HIGH No public access block so not ignoring public acls 
────────────────────────────────────────────────────────────────────────────────
  main.tf:13-20
────────────────────────────────────────────────────────────────────────────────
   13    resource "aws_s3_bucket" "public_bucket" {
   14      bucket = "iac-scan-test-bucket"
   15      acl    = "public-read"
   16    
   17      tags = {
   18        Environment = "test"
   19      }
   20    }
────────────────────────────────────────────────────────────────────────────────
          ID aws-s3-ignore-public-acls
      Impact PUT calls with public ACLs specified can make objects public
  Resolution Enable ignoring the application of public ACLs in PUT calls

  More Information
  - https://aquasecurity.github.io/tfsec/v1.28.14/checks/aws/s3/ignore-public-acls/
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block#ignore_public_acls
────────────────────────────────────────────────────────────────────────────────


Result #5 HIGH No public access block so not restricting public buckets 
────────────────────────────────────────────────────────────────────────────────
  main.tf:13-20
────────────────────────────────────────────────────────────────────────────────
   13    resource "aws_s3_bucket" "public_bucket" {
   14      bucket = "iac-scan-test-bucket"
   15      acl    = "public-read"
   16    
   17      tags = {
   18        Environment = "test"
   19      }
   20    }
────────────────────────────────────────────────────────────────────────────────
          ID aws-s3-no-public-buckets
      Impact Public buckets can be accessed by anyone
  Resolution Limit the access to public buckets to only the owner or AWS Services (eg; CloudFront)

  More Information
  - https://aquasecurity.github.io/tfsec/v1.28.14/checks/aws/s3/no-public-buckets/
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block#restrict_public_buckets¡
────────────────────────────────────────────────────────────────────────────────


Result #6 HIGH Bucket does not encrypt data with a customer managed key. 
────────────────────────────────────────────────────────────────────────────────
  main.tf:13-20
────────────────────────────────────────────────────────────────────────────────
   13    resource "aws_s3_bucket" "public_bucket" {
   14      bucket = "iac-scan-test-bucket"
   15      acl    = "public-read"
   16    
   17      tags = {
   18        Environment = "test"
   19      }
   20    }
────────────────────────────────────────────────────────────────────────────────
          ID aws-s3-encryption-customer-key
      Impact Using AWS managed keys does not allow for fine grained control
  Resolution Enable encryption using customer managed keys

  More Information
  - https://aquasecurity.github.io/tfsec/v1.28.14/checks/aws/s3/encryption-customer-key/
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#enable-default-server-side-encryption
────────────────────────────────────────────────────────────────────────────────


Result #7 HIGH Bucket has a public ACL: 'public-read'. 
────────────────────────────────────────────────────────────────────────────────
  main.tf:15
────────────────────────────────────────────────────────────────────────────────
   13    resource "aws_s3_bucket" "public_bucket" {
   14      bucket = "iac-scan-test-bucket"
   15  [   acl    = "public-read" ("public-read")
   16    
   17      tags = {
   18        Environment = "test"
   19      }
   20    }
────────────────────────────────────────────────────────────────────────────────
          ID aws-s3-no-public-access-with-acl
      Impact Public access to the bucket can lead to data leakage
  Resolution Don't use canned ACLs or switch to private acl

  More Information
  - https://aquasecurity.github.io/tfsec/v1.28.14/checks/aws/s3/no-public-access-with-acl/
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
────────────────────────────────────────────────────────────────────────────────


Result #8 MEDIUM Bucket does not have logging enabled 
────────────────────────────────────────────────────────────────────────────────
  main.tf:13-20
────────────────────────────────────────────────────────────────────────────────
   13    resource "aws_s3_bucket" "public_bucket" {
   14      bucket = "iac-scan-test-bucket"
   15      acl    = "public-read"
   16    
   17      tags = {
   18        Environment = "test"
   19      }
   20    }
────────────────────────────────────────────────────────────────────────────────
          ID aws-s3-enable-bucket-logging
      Impact There is no way to determine the access to this bucket
  Resolution Add a logging block to the resource to enable access logging

  More Information
  - https://aquasecurity.github.io/tfsec/v1.28.14/checks/aws/s3/enable-bucket-logging/
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
────────────────────────────────────────────────────────────────────────────────


Result #9 MEDIUM Bucket does not have versioning enabled 
────────────────────────────────────────────────────────────────────────────────
  main.tf:13-20
────────────────────────────────────────────────────────────────────────────────
   13    resource "aws_s3_bucket" "public_bucket" {
   14      bucket = "iac-scan-test-bucket"
   15      acl    = "public-read"
   16    
   17      tags = {
   18        Environment = "test"
   19      }
   20    }
────────────────────────────────────────────────────────────────────────────────
          ID aws-s3-enable-versioning
      Impact Deleted or modified data would not be recoverable
  Resolution Enable versioning to protect against accidental/malicious removal or modification

  More Information
  - https://aquasecurity.github.io/tfsec/v1.28.14/checks/aws/s3/enable-versioning/
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#versioning
────────────────────────────────────────────────────────────────────────────────


Result #10 LOW Bucket does not have a corresponding public access block. 
────────────────────────────────────────────────────────────────────────────────
  main.tf:13-20
────────────────────────────────────────────────────────────────────────────────
   13    resource "aws_s3_bucket" "public_bucket" {
   14      bucket = "iac-scan-test-bucket"
   15      acl    = "public-read"
   16    
   17      tags = {
   18        Environment = "test"
   19      }
   20    }
────────────────────────────────────────────────────────────────────────────────
          ID aws-s3-specify-public-access-block
      Impact Public access policies may be applied to sensitive data buckets
  Resolution Define a aws_s3_bucket_public_access_block for the given bucket to control public access policies

  More Information
  - https://aquasecurity.github.io/tfsec/v1.28.14/checks/aws/s3/specify-public-access-block/
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block#bucket
────────────────────────────────────────────────────────────────────────────────


  timings
  ──────────────────────────────────────────
  disk i/o             15.169µs
  parsing              170.357µs
  adaptation           92.147µs
  checks               3.029718ms
  total                3.307391ms

  counts
  ──────────────────────────────────────────
  modules downloaded   0
  modules processed    1
  blocks processed     2
  files read           1

  results
  ──────────────────────────────────────────
  passed               0
  ignored              0
  critical             0
  high                 7
  medium               2
  low                  1

  10 potential problem(s) detected.

```

## Checkov Scan Results

```
terraform scan results:

Passed checks: 4, Failed checks: 8, Skipped checks: 0

Check: CKV2_AWS_6: "Ensure that S3 bucket has a Public Access block"
	FAILED for resource: aws_s3_bucket.public_bucket
	File: /main.tf:13-20
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-networking-policies/s3-bucket-should-have-public-access-blocks-defaults-to-false-if-the-public-access-block-is-not-attached

		13 | resource "aws_s3_bucket" "public_bucket" {
		14 |   bucket = "iac-scan-test-bucket"
		15 |   acl    = "public-read"
		16 | 
		17 |   tags = {
		18 |     Environment = "test"
		19 |   }
		20 | }

Check: CKV2_AWS_62: "Ensure S3 buckets should have event notifications enabled"
	FAILED for resource: aws_s3_bucket.public_bucket
	File: /main.tf:13-20
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-2-62

		13 | resource "aws_s3_bucket" "public_bucket" {
		14 |   bucket = "iac-scan-test-bucket"
		15 |   acl    = "public-read"
		16 | 
		17 |   tags = {
		18 |     Environment = "test"
		19 |   }
		20 | }

Check: CKV_AWS_20: "S3 Bucket has an ACL defined which allows public READ access."
	FAILED for resource: aws_s3_bucket.public_bucket
	File: /main.tf:13-20
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-1-acl-read-permissions-everyone

		13 | resource "aws_s3_bucket" "public_bucket" {
		14 |   bucket = "iac-scan-test-bucket"
		15 |   acl    = "public-read"
		16 | 
		17 |   tags = {
		18 |     Environment = "test"
		19 |   }
		20 | }

Check: CKV_AWS_21: "Ensure all data stored in the S3 bucket have versioning enabled"
	FAILED for resource: aws_s3_bucket.public_bucket
	File: /main.tf:13-20
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-16-enable-versioning

		13 | resource "aws_s3_bucket" "public_bucket" {
		14 |   bucket = "iac-scan-test-bucket"
		15 |   acl    = "public-read"
		16 | 
		17 |   tags = {
		18 |     Environment = "test"
		19 |   }
		20 | }

Check: CKV_AWS_145: "Ensure that S3 buckets are encrypted with KMS by default"
	FAILED for resource: aws_s3_bucket.public_bucket
	File: /main.tf:13-20
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-s3-buckets-are-encrypted-with-kms-by-default

		13 | resource "aws_s3_bucket" "public_bucket" {
		14 |   bucket = "iac-scan-test-bucket"
		15 |   acl    = "public-read"
		16 | 
		17 |   tags = {
		18 |     Environment = "test"
		19 |   }
		20 | }

Check: CKV2_AWS_61: "Ensure that an S3 bucket has a lifecycle configuration"
	FAILED for resource: aws_s3_bucket.public_bucket
	File: /main.tf:13-20
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-logging-policies/bc-aws-2-61

		13 | resource "aws_s3_bucket" "public_bucket" {
		14 |   bucket = "iac-scan-test-bucket"
		15 |   acl    = "public-read"
		16 | 
		17 |   tags = {
		18 |     Environment = "test"
		19 |   }
		20 | }

Check: CKV_AWS_18: "Ensure the S3 bucket has access logging enabled"
	FAILED for resource: aws_s3_bucket.public_bucket
	File: /main.tf:13-20
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/s3-policies/s3-13-enable-logging

		13 | resource "aws_s3_bucket" "public_bucket" {
		14 |   bucket = "iac-scan-test-bucket"
		15 |   acl    = "public-read"
		16 | 
		17 |   tags = {
		18 |     Environment = "test"
		19 |   }
		20 | }

Check: CKV_AWS_144: "Ensure that S3 bucket has cross-region replication enabled"
	FAILED for resource: aws_s3_bucket.public_bucket
	File: /main.tf:13-20
	Guide: https://docs.prismacloud.io/en/enterprise-edition/policy-reference/aws-policies/aws-general-policies/ensure-that-s3-bucket-has-cross-region-replication-enabled

		13 | resource "aws_s3_bucket" "public_bucket" {
		14 |   bucket = "iac-scan-test-bucket"
		15 |   acl    = "public-read"
		16 | 
		17 |   tags = {
		18 |     Environment = "test"
		19 |   }
		20 | }

github_actions scan results:

Passed checks: 104, Failed checks: 0, Skipped checks: 0


```
