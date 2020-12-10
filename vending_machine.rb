
require "./product.rb"
require "./vending_machine1.rb"
require "./user.rb"

product_params = [
  {name: "コーラ", price: 130},
  {name: "コーヒー", price: 130},
  {name: "水", price: 100},
  {name: "お茶", price: 130},
  {name: "オレンジジュース", price: 130},
  {name: "ペプシコーラ", price: 130}
]

user = User.new

vending_machine = Vending_machine.new(product_params)

vending_machine.disp_products

user.choosen_product(vending_machine.products)

user.decide_quantity

vending_machine.calculate_charges(user)