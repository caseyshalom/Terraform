# Terraform Cheatsheet

## Basic Workflow
```bash
terraform init
terraform plan
terraform apply
terraform destroy
```

## Common Commands
| Command | Description |
|---------|-------------|
| `terraform validate` | Validate config files |
| `terraform fmt` | Format config files |
| `terraform refresh` | Update state with real resources |
| `terraform output` | Show output values |
| `terraform providers` | Show provider requirements |

## Useful Flags
| Flag | Description |
|------|-------------|
| `-var="name=value"` | Set variable |
| `-var-file=file` | Use variables from file |
| `-target=resource` | Target specific resource |
| `-out=file` | Save plan to file |
| `-auto-approve` | Skip approval prompt |

## State Management
```bash
# Backup state
terraform state pull > backup.tfstate

# Restore state
terraform state push backup.tfstate

# List resources
terraform state list

# Show resource details
terraform state show 'aws_instance.web'
```

## Workspace Management
```bash
# Create workspace
terraform workspace new dev

# Switch workspace
terraform workspace select prod

# Delete workspace
terraform workspace delete staging
```

## Tips
1. Always run `plan` before `apply`
2. Use `-target` sparingly
3. Commit your state to remote backend
4. Use `.tfvars` files for environment variables
5. Version control your Terraform code