variable "aws_ami_id" {
  description = "AMI for instance"
  type        = string
  default     = "ami-05b46bc4327cf9d99"
}

variable "aws_instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.small"
}

variable "aws_az" {
  description = "Availability Zone"
  type        = string
  default     = "us-west-1b"
}
