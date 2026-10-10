variable "dx_macsec_key_associations" {
  description = <<EOT
Map of dx_macsec_key_associations, attributes below
Required:
    - connection_id
Optional:
    - cak
    - ckn
    - region
    - secret_arn
EOT

  type = map(object({
    connection_id = string
    cak           = optional(string)
    ckn           = optional(string)
    region        = optional(string)
    secret_arn    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.dx_macsec_key_associations : (
        v.cak == null || (can(regex("[0-9A-Fa-f]{64}$", v.cak)))
      )
    ])
    error_message = "Must be 64-character hex code string"
  }
  validation {
    condition = alltrue([
      for k, v in var.dx_macsec_key_associations : (
        v.ckn == null || (can(regex("[0-9A-Fa-f]{64}$", v.ckn)))
      )
    ])
    error_message = "Must be 64-character hex code string"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

