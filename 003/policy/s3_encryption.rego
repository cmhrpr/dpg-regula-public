# Policies must have description of at least 25 characters.
package rules.long_description

__rego__metadoc__ := {
  "id": "CUSTOM_0001",
  "title": "S3_BUCKET_ENCRYPTION",
  "description": "S3 buckets must have default server side encryption enabled",
  "custom": {
    "controls": {
      "CORPORATE-POLICY": [
        "CORPORATE-POLICY_1.1"
      ]
    },
    "severity": "Low"
  }
}

resource_types = ["aws_s3_bucket", "aws_ec2_instance"]

default allow = false

allow {
  input.tags
}
