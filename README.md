# Terraform Modules for Proxmox

## Requirements

* Terraform
* Terraform Provider & Provisioner for Proxmox from https://github.com/Telmate/terraform-provider-proxmox

## Developing and Using the Provider
If you wish to work on the provider, you'll first need Go installed on your machine (please check the requirements before proceeding).

We use provider from this repo https://github.com/Telmate/terraform-provider-proxmox as main plugins. So please follow instruction for using that plugins.

Please use modules/proxmox as your module and create a new folder and place any terraform files there. Then you can do terraform operation there as in Run section

### Run 

```
terraform init
terraform plan
terraform apply
```

## Contributing

Terraform is the work of thousands of contributors. We appreciate your help!
