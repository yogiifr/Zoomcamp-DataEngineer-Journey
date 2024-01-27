variable "credentials" {
  description = "My Credentials"
  default     = "./terraform/service-account.json"
  #ex: if you have a directory where this file is called keys with your service account json file
  #saved there as my-creds.json you could use default = "./keys/my-creds.json"
}


variable "project" {
  description = "Project"
  default     = "Yogi-Zoomcamp-2024"
}

variable "region" {
  description = "Region"
  #Update the below to your desired region
  default     = "us-central1"
}

variable "location" {
  description = "Project Location"
  #Update the below to your desired location
  default     = "US"
}

variable "bq_dataset_name" {
  description = "Data Warehouse for Zoomcamp"
  #Update the below to what you want your dataset to be called
  default     = "zoomcamp-2024-dw"
}

variable "gcs_bucket_name" {
  description = "Data Lake for Zoomcamp"
  #Update the below to a unique bucket name
  default     = "zoomcamp-2024-lake"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}