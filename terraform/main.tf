module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aft-sandbox+gdancerx@gmail.com"
    AccountName               = "AFT-Sandbox-Account"
    ManagedOrganizationalUnit = "AFT Demo"
    SSOUserEmail              = "aft-sandbox+gdancerx@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Organization" = "Louisa"
  }

  change_management_parameters = {
    change_requested_by = "Denis Volkov"
    change_reason       = "Demo AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "dev"
  }

  account_customizations_name = "sandbox"
}
