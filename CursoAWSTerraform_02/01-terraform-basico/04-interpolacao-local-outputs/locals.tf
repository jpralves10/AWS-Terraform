locals {
  common_tags = {
    Name        = "My first terraform bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Jean Alves"
    UpdateAt    = "2021-07-21"
  }

  ip_filepath = "ips.json"
}