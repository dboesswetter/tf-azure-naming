locals {
    # use the first letter of each word and make it lower case
    region = lower(join("", compact(flatten(regexall("^(.)| (.)", var.location)))))
}

module "naming" {
#  source  = "Azure/naming/azurerm"
  source  = "github.com/Azure/terraform-azurerm-naming"
  suffix = concat( [local.region], var.name, [var.stage] )
}
