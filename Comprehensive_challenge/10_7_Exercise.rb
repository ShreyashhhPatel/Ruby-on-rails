# Given below is the menu of a pizza restaurant:
# Veggie Pizza: $7
# Chicken Pizza: $10
# Cookies: $3
# Mary is having a party and she has ordered the following items:

# 5 Veggie Pizzas
# 7 Chicken Pizzas
# 20 Cookies
# Write a program that will print the total cost like this:

# Total cost of your order is xxxxx.

menu = {
    Veggie_Pizza: 7,
    Chicken_Pizza: 10,
    Cookies: 3
}

order = { 
    Veggie_Pizza: 5,
    Chicken_Pizza: 7,
    Cookies: 20
}

veggie_pizza_cost = menu[:Veggie_Pizza]*order[:Veggie_Pizza]
chicken_pizza_cost = menu[:Chicken_Pizza]*order[:Chicken_Pizza]
cookies = menu[:Cookies]*order[:Cookies]

total_cost = veggie_pizza_cost + chicken_pizza_cost + cookies

puts "Total cost of your order is #{total_cost}"