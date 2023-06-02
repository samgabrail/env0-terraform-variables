output "OrderOutput" {
  value = data.dominos_menu_item.item.matches[*]
}

output "credit_card" {
  value = var.credit_card
  sensitive = true
}
