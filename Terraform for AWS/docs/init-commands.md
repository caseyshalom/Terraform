# Terraform Init Commands

## Basic Initialization
```bash
terraform init
```

## Initialize with specific backend
```bash
terraform init -backend-config="bucket=my-tf-state" \
               -backend-config="key=dev/terraform.tfstate" \
               -backend-config="region=asia-southeast-1"
```

## Upgrade providers and modules
```bash
terraform init -upgrade
```

## Reinitialize after backend changes
```bash
terraform init -reconfigure
```

## Initialize with plugin cache
```bash
terraform init -plugin-dir=/path/to/plugins
```

## Common Issues
- **Error: Provider requirements not met**  
  Solution: 
  ```bash
  terraform init -upgrade
  ```

- **Error: Backend configuration changed**  
  Solution:
  ```bash
  terraform init -reconfigure
  ```