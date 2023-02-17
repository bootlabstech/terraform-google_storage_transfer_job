variable "description" {
  type        = string
  description = "Unique description to identify the Transfer Job"
}

variable "project_id" {
  type        = string
  description = "The project Id to create job for transfer data"
}

variable "src_bucket_name" {
  type        = string
  description = "The name of Source Google Cloud Storage Bucket"
}

variable "dest_bucket_name" {
  type        = string
  description = "The name of Destination Google Cloud Storage Bucket"
}

variable "start_year_job" {
  type        = number
  description = "The start year of the job"
}

variable "start_month_job" {
  type        = number
  description = "The start month of the job"
}

variable "start_date_job" {
  type        = number
  description = "The start year of the job"
}

variable "end_year_job" {
  type        = number
  description = "The end year of the job"
}

variable "end_month_job" {
  type        = number
  description = "The end month of the job"
}

variable "end_date_job" {
  type        = number
  description = "The end date of the job"
}

variable "start_time_hours_job" {
  type        = number
  description = "The start hours  of the job"
}

variable "start_time_minutes_job" {
  type        = number
  description = "The start  minutes of the job"
}

variable "dest_project_id" {
  type        = string
  description = "The permission to be assign in the destination project id to transfer the data"
}