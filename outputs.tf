output "OrderOutput" {
  value = data.dominos_menu_item.item.matches[*]
  description = "My order"
}

output "credit_card" {
  value = var.credit_card
  description = "Credit Card Info"
  sensitive = true
}
