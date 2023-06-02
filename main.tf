terraform {
  required_providers {
    dominos = {
      source  = "MNThomson/dominos"
      version = "0.2.1"
    }
  }
}

provider "dominos" {
  first_name    = local.customer_info.first_name
  last_name     = local.customer_info.last_name
  email_address = local.customer_info.email_address
  phone_number  = local.customer_info.phone_number
  credit_card   = var.credit_card
}

data "dominos_address" "addr" {
  street      = var.street
  city        = var.city
  region      = var.region
  postal_code = var.postal_code
}

data "dominos_store" "store" {
  address_url_object = data.dominos_address.addr.url_object
}

data "dominos_menu_item" "item" {
  store_id     = data.dominos_store.store.store_id
  query_string = var.menu_item
}

output "OrderOutput" {
  value = data.dominos_menu_item.item.matches[*]
}

# resource "dominos_order" "order" {
#   api_object = data.dominos_address.addr.api_object
#   store_id   = data.dominos_store.store.store_id
#   item_codes = data.dominos_menu_item.item.matches[*].code
#   price_only = true
# }