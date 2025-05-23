# Terraform State Management

## List resources in state
```bash
terraform state list
```

## Show resource details
```bash
terraform state show aws_instance.web
```

## Move resource (rename in state)
```bash
terraform state mv aws_instance.old aws_instance.new
```

## Remove resource from state
```bash
terraform state rm aws_instance.web
```

## Import existing resource
```bash
terraform import aws_instance.web i-1234567890abcdef0
```

## Pull current state
```bash
terraform state pull > state.json
```

## Common Issues
- **State locked**: Use `force-unlock`
- **State outdated**: Run `terraform refresh`