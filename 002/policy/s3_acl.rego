# S3 buckets must have a private ACL enabled.
package rules.s3_acl

__rego__metadoc__ := {
  "id": "CUSTOM_0002",
  "title": "S3_ACL",
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
  input.acl == "private"
}
