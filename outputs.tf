output "dx_macsec_key_associations_id" {
  description = "Map of id values across all dx_macsec_key_associations, keyed the same as var.dx_macsec_key_associations"
  value       = { for k, v in aws_dx_macsec_key_association.dx_macsec_key_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dx_macsec_key_associations_cak" {
  description = "Map of cak values across all dx_macsec_key_associations, keyed the same as var.dx_macsec_key_associations"
  value       = { for k, v in aws_dx_macsec_key_association.dx_macsec_key_associations : k => v.cak if v.cak != null && length(v.cak) > 0 }
}
output "dx_macsec_key_associations_ckn" {
  description = "Map of ckn values across all dx_macsec_key_associations, keyed the same as var.dx_macsec_key_associations"
  value       = { for k, v in aws_dx_macsec_key_association.dx_macsec_key_associations : k => v.ckn if v.ckn != null && length(v.ckn) > 0 }
}
output "dx_macsec_key_associations_connection_id" {
  description = "Map of connection_id values across all dx_macsec_key_associations, keyed the same as var.dx_macsec_key_associations"
  value       = { for k, v in aws_dx_macsec_key_association.dx_macsec_key_associations : k => v.connection_id if v.connection_id != null && length(v.connection_id) > 0 }
}
output "dx_macsec_key_associations_region" {
  description = "Map of region values across all dx_macsec_key_associations, keyed the same as var.dx_macsec_key_associations"
  value       = { for k, v in aws_dx_macsec_key_association.dx_macsec_key_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dx_macsec_key_associations_secret_arn" {
  description = "Map of secret_arn values across all dx_macsec_key_associations, keyed the same as var.dx_macsec_key_associations"
  value       = { for k, v in aws_dx_macsec_key_association.dx_macsec_key_associations : k => v.secret_arn if v.secret_arn != null && length(v.secret_arn) > 0 }
}
output "dx_macsec_key_associations_start_on" {
  description = "Map of start_on values across all dx_macsec_key_associations, keyed the same as var.dx_macsec_key_associations"
  value       = { for k, v in aws_dx_macsec_key_association.dx_macsec_key_associations : k => v.start_on if v.start_on != null && length(v.start_on) > 0 }
}
output "dx_macsec_key_associations_state" {
  description = "Map of state values across all dx_macsec_key_associations, keyed the same as var.dx_macsec_key_associations"
  value       = { for k, v in aws_dx_macsec_key_association.dx_macsec_key_associations : k => v.state if v.state != null && length(v.state) > 0 }
}

