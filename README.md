# terraform-azurerm-serviceprincipal

[![Terraform](https://github.com/imjoseangel/terraform-azurerm-serviceprincipal/actions/workflows/terraform.yml/badge.svg)](https://github.com/imjoseangel/terraform-azurerm-serviceprincipal/actions/workflows/terraform.yml)

## Deploys a service principal on Azure with role assignment

This Terraform module deploys a serviceprincipal on Azure

### NOTES

* A Vnet needs to be created beforehand

## Usage in Terraform 1.0

```terraform
module "serviceprincipal" {
  source                               = "github.com/imjoseangel/terraform-azurerm-serviceprincipal"
  name                                 = "myserviceprincipal"
}
```

## Authors

Originally created by [imjoseangel](http://github.com/imjoseangel)

## License

[MIT](LICENSE)
