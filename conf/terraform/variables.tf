variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "ap-northeast-1"
}

variable "fixed_availability_zones" {
  default = [
    "ap-northeast-1b",
    "ap-northeast-1c",
    "ap-northeast-1d",
  ]

  type = "list"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "datafordemocracy/crash-model:showcase"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8080
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}