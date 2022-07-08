/**
 * Copyright © 2014-2022 HashiCorp, Inc.
 *
 * This Source Code is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this project, you can obtain one at http://mozilla.org/MPL/2.0/.
 *
 */

variable "key_vault_name" {
  description = "Azure Key Vault in which the Vault key & secrets are stored"
  type        = string
}

variable "key_vault_key_name" {
  description = "Key vault key for auto-unseal"
  type        = string
}

variable "key_vault_secret_id" {
  type        = string
  description = "Key Vault Secret containing the PFX bundle for TLS"
}

variable "leader_tls_servername" {
  type        = string
  description = "One of the DNS Subject Alternative Names on the cert in key_vault_secret_id"
}

variable "license_secret_id" {
  type        = string
  description = "Key Vault Secret containing the base64 encoded Vault Enterprise license file"
}

variable "resource_group" {
  description = "Azure resource group in which resources will be deployed"

  type = object({
    name = string
  })
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Tenant ID"
  type        = string
}

variable "user_supplied_userdata_path" {
  default     = null
  description = "File path to custom VM configuration (i.e. cloud-init config) being supplied by the user"
  type        = string
}

variable "vault_version" {
  description = "Vault version"
  type        = string
}

variable "vm_scale_set_name" {
  description = "Name for virtual machine scale set"
  type        = string
}
