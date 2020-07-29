variable "environment" {
  type        = string
  description = "the env"
}

variable "location" {
  type        = string
  description = "where it is"
}

variable "time_zone" {
  type        = string
  description = "the local time zone"
}

variable "out_hour" {
  type        = number
  description = "hour scaled out"
}

variable "out_minute" {
  type        = number
  description = "minute scaled out"
}