# Terraform Destroy Commands

## Basic destroy
```bash
terraform destroy
```

## Auto approve destroy
```bash
terraform destroy -auto-approve
```

## Destroy specific resource
```bash
terraform destroy -target=aws_instance.web
```

## Destroy with var file
```bash
terraform destroy -var-file="prod.tfvars"
```

## Prevent destroy on specific resources
```markdown
# In your Terraform code:
resource "aws_db_instance" "example" {
  lifecycle {
    prevent_destroy = true
  }
}
```

## Common Scenarios
- **Partial destroy**: Use `-target` flag
- **Dry run**: Combine with `plan -destroy` first