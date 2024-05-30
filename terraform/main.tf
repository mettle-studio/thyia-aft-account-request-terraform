module "dns-account-aft" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.account+aft-dns@thyia.co.uk"
    AccountName               = "DNS-AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "savvas@mettle-studio.com"
    SSOUserFirstName          = "Savvas"
    SSOUserLastName           = "Vezyridis"
  }

  account_tags = {}

  change_management_parameters = {
    change_requested_by = "Savvas Vezyridis"
    change_reason       = "Deploying a DNS account"
  }

  custom_fields = {}

  account_customizations_name = "dns-account"
}

module "development-account-aft" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.account+aft-development@thyia.co.uk"
    AccountName               = "Development-AFT"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "savvas@mettle-studio.com"
    SSOUserFirstName          = "Savvas"
    SSOUserLastName           = "Vezyridis"
  }

  account_tags = {
    Environment = "Development"
  }

  change_management_parameters = {
    change_requested_by = "Savvas Vezyridis"
    change_reason       = "Deploying a Development account"
  }

  custom_fields = {
    Environment = "Development"
  }

  account_customizations_name = "development-account"
}
