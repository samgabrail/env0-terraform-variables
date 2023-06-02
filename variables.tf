variable "first_name" {
  type        = string
  description = "Customer's first name"
}

variable "last_name" {
  type        = string
  description = "Customer's last name"
}

variable "phone_number" {
  type        = string
  description = "Customer's phone number"
}

variable "street" {
  type        = string
  description = "Street address of the Store"
}

variable "city" {
  type        = string
  description = "City where the store is located"
}

variable "region" {
  type        = string
  description = "State or Province where the store is located"
}

variable "postal_code" {
  type        = string
  description = "Postal code of the Store"
}

variable "order" {
  type        = bool
  description = "Whether to order a pizza or not"
  default     = false
}

variable "menu_item" {
  type        = list(string)
  description = "A list of the items to order from the menu"
  validation {
    condition     = contains(var.menu_item, "thin")
    error_message = "You must order a 'thin' pizza crust since it's our team's favorite"
  }
}

variable "credit_card" {
  type        = map(string)
  description = "Credit Card Info"
  sensitive   = true
}

locals {
  customer_info = {
    first_name    = var.first_name
    last_name     = var.last_name
    email_address = "${var.first_name}.${var.last_name}@company.com"
    phone_number  = var.phone_number
  }
  should_order = var.order ? 1 : 0
}
