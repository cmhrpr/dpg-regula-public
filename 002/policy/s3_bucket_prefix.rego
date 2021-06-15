# Ensures that S3 buckets are using prefixed names, and that the name is of a valid length
package rules.s3_bucket_prefix

__rego__metadoc__ := {
  "id": "CUSTOM_0003",
  "title": "s3_bucket_prefix",
  "description": "S3 buckets must have a private ACL enabled",
  "custom": {
    "controls": {
      "CORPORATE-POLICY": [
        "CORPORATE-POLICY_1.1"
      ]
    },
    "severity": "Low"
  }
}

resource_type = "aws_s3_bucket"

default allow = false

allow {
  count(input.bucket_prefix) < 32
  # not is_null(input.bucket_prefix)
}
