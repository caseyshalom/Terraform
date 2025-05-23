# Terraform Workspace Commands

## List workspaces
```bash
terraform workspace list
```

## Create new workspace
```bash
terraform workspace new dev
```

## Select workspace
```bash
terraform workspace select prod
```

## Show current workspace
```bash
terraform workspace show
```

## Delete workspace
```bash
terraform workspace delete staging
```

## Workspace best practices
```markdown
1. Use different workspaces for each environment (dev/stage/prod)
2. Use workspace-specific variables:
   ```hcl
   variable "instance_count" {
     default = {
       dev  = 1
       prod = 3
     }
   }
   
   resource "aws_instance" "web" {
     count = lookup(var.instance_count, terraform.workspace, 1)
   }
   ```