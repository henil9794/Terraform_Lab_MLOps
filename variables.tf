variable "project_id" {
  description = "Terrafrom Lab GCP Project ID"
  type        = string
  default     = "terraform-lab-mlops-491515" 
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "instance_name" {
  type    = string
  default = "mlops-terraform-lab-vm"
}

variable "machine_type" {
  type    = string
  default = "e2-micro"
}