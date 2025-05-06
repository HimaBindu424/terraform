variable "location"{
  type = string
}

variable "resource_group_name"{
  type = string
}

variable "name" {
  type        = string
  description = "The name of the App Service"
}
variable "plan_id" {
  type        = string
  description = "The ID of the App Service Plan within which to create this App Service."
}
variable "app_settings" {
  type        = map(any)
  description = "A key-value pair of App Settings"
}
variable "always_on" {
  type        = bool
  description = "The app service should be loaded at all times"
  default     = false
}
variable "ftps" {
  type        = string
  description = "The state of FTP / FTPS service for this App Service"
  default     = "Disabled"
}
variable "ip_rules" {
  type        = list(string)
  description = "The app-service ip rules"
  default     = null
}
variable "websockets" {
  type        = bool
  description = "The app-service WebSockets should be enabled"
  default     = null
}
variable "minimum_tls_version" {
  type        = string
  description = "The minimum supported TLS version for the app service"
  default     = "1.2"
}
variable "health_check_path" {
  type        = string
  description = "The health check path to be pinged by App Service"
  default     = null
}
variable "https_only" {
  type        = bool
  description = "The App Service only be accessed via HTTPS"
  default     = true
}
variable "client_certificate" {
  type        = bool
  description = "The App Service require client certificates for incoming requests"
  default     = false
}
variable "authentication" {
  type        = bool
  description = "App service authentication enabled"
  default     = false
}

variable "allow_anonymous" {
  type        = bool
  description = "App service unauthenticated client action"
  default     = true
}

variable "dotnet_framework_version" {
  type = string
  default = null
  
}

variable "java_version" {
  type = string
  default = null
  
}

variable "java_container" {
  type = string
  default = null
  
}

variable "java_container_version" {
  type = string
  default = null
  
}








