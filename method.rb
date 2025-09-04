def print_hello_world
  puts "Hello world!"
end

print_hello_world

def add(a, b)
   return a + b
end

puts add(2, 3)

def divide(a, b)
  return "Cannot divide by zero" if b == 0
  a / b
end

puts divide(10, 2)
puts divide(10, 0)


def calculate_discount(cost,discount_type,num_type)
    # if discount_type != "fixed" && != "percent"
    #     return "Invalid discount type" 
    # end

    if discount_type == "fixed"
        return [cost - num_type,0].max
    elsif discount_type == "percent"
        return cost - ((cost *num_type)/100)
    else
        return "Invalid discount type" 
    end
end



puts calculate_discount(100, "percent", 20) # Output: 80.0
puts calculate_discount(100, "fixed", 30) # Output: 70.0
puts calculate_discount(100, "fixed", 150) # Output: 0.0
puts calculate_discount(100, "unknown", 10) # Output: "Invalid discount type"