terraform {
  required_version = "1.10.3"
  required_providers {
    aws = {
      version = "5.82.0"
      source  = "hashicorp/aws"
    }
    kubernetes = {
      version = "2.35.0"
      source  = "hashicorp/kubernetes"
    }
    helm = {
      version = "2.16.1"
      source  = "hashicorp/helm"
    }
    random = {
      version = "3.6.3"
      source  = "hashicorp/random"
    }
  }
}
