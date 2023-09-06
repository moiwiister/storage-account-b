output "storage_account_id" {
  value       = storage-account-module.storage_account.id
  description = "ID of the storage account."
}

output "storage_account_name1" {
  value       = storage-account-module.storage_account.name
  description = "Name of the storage account."
}
