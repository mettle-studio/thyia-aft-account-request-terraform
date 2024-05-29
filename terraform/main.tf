module "test_workload" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.account+test-workloads@thyia.co.uk"
    AccountName               = "Test"
    ManagedOrganizationalUnit = "AFT" # Workloads / SDLC
    SSOUserEmail              = "sam@mettle-studio.com"
    SSOUserFirstName          = "Sam"
    SSOUserLastName           = "Parkinson"
  }

  account_tags = {}

  change_management_parameters = {
    change_requested_by = "Sam Parkinson"
    change_reason       = "Deploying a test workload account"
  }

  custom_fields = {}

  account_customizations_name = "workload"
}

module "test_savvas" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "svezyridis@gmail.com"
    AccountName               = "Test-Savvas"
    ManagedOrganizationalUnit = "AFT" # Workloads / SDLC
    SSOUserEmail              = "savvas@mettle-studio.com"
    SSOUserFirstName          = "Savvas"
    SSOUserLastName           = "Vezyridis"
  }

  account_tags = {}

  change_management_parameters = {
    change_requested_by = "Savvas Vezyridis"
    change_reason       = "Deploying a test workload account"
  }

  custom_fields = {}

  account_customizations_name = "workload-savvas"
}
