# Terraform Plan Commands

## Basic plan
```bash
terraform plan
```

## Save plan to file
```bash
terraform plan -out=tfplan
```

## Plan with specific variables
```bash
terraform plan -var="instance_type=t2.micro" -var="env=dev"
```

## Plan using var file
```bash
terraform plan -var-file="dev.tfvars"
```

## Plan with destroy
```bash
terraform plan -destroy
```

## Show plan in compact view
```bash
terraform plan -compact-warnings
```

## Common Flags
- `-detailed-exitcode`: Return detailed exit code
- `-lock=false`: Disable state locking
- `-parallelism=n`: Limit concurrent operations