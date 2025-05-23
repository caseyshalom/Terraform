# Terraform Apply Commands

## Basic apply
```bash
terraform apply
```

## Apply saved plan
```bash
terraform apply tfplan
```

## Auto approve
```bash
terraform apply -auto-approve
```

## Apply with specific variables
```bash
terraform apply -var="region=us-west-1" -var="env=prod"
```

## Apply with timeout
```bash
terraform apply -timeout=30m
```

## Apply only specific resource
```bash
terraform apply -target=aws_instance.web
```

## Common Issues
- **Error: Invalid plan file**  
  Solution: Regenerate plan file
  
- **Error: State locked**  
  Solution: 
  ```bash
  terraform force-unlock LOCK_ID
  ```