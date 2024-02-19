# Clear existing data to prevent duplication errors
PizzaTopping.delete_all
Topping.delete_all
Pizza.delete_all

# Creating Toppings
cheese = Topping.create(name: 'Cheese')
pepperoni = Topping.create(name: 'Pepperoni')
mushrooms = Topping.create(name: 'Mushrooms')
olives = Topping.create(name: 'Olives')

# Creating Pizzas
margherita = Pizza.create(name: 'Margherita')
pepperoni_pizza = Pizza.create(name: 'Pepperoni Pizza')
veggie = Pizza.create(name: 'Veggie')

# Associating Pizzas and Toppings
margherita.toppings << cheese
pepperoni_pizza.toppings << [cheese, pepperoni]
veggie.toppings << [cheese, mushrooms, olives]

puts 'Seed data loaded successfully!'