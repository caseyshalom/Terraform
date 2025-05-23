# Create the Lambda function
resource "aws_lambda_function" "lks_iot_lambda" {
  function_name = "LKS-IOT-Lambda"
  description   = "Lambda function for LKS CC 2024 IoT project"
  
  # Replace this with your actual handler file and function
  handler = "index.lambda_handler"
  runtime = "python3.12"
  
  # Placeholder - replace with your actual Lambda code
  # You can use either the inline code (for simple functions) or reference a zip file
  filename         = "lambda_function.zip" # Create this zip file with your code
  source_code_hash = filebase64sha256("lambda_function.zip")
  
  # Alternatively, for simple functions you can use inline code:
  /*
  inline_code = <<EOF
def lambda_handler(event, context):
    return {
        'statusCode': 200,
        'body': 'Hello from Lambda!'
    }
  EOF
  */
  
  role = aws_iam_role.lambda_exec.arn

  timeout     = 60 # 1 minute
  memory_size = 256
  ephemeral_storage {
    size = 512 # MB
  }
  
  architectures = ["arm64"]
  
  tags = {
    "LKS-CC-2024" = "LKS-IOT-LAMBDA"
  }
}

# IAM role for Lambda execution
resource "aws_iam_role" "lambda_exec" {
  name = "lks_iot_lambda_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

# Basic Lambda execution policy
resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  role       = aws_iam_role.lambda_exec.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

output "s3_bucket_name" {
  value = aws_s3_bucket.lks_iot_bucket.bucket
}

output "lambda_function_name" {
  value = aws_lambda_function.lks_iot_lambda.function_name
}