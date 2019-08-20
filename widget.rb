# The program needs to greet the user with the message "Welcome to the widget store!" 
# Then it needs to ask them how many widgets they're ordering. 
# It should wait for them to type in a quantity and press Enter. 
# The program will need to store whatever quantity they enter in the computer's memory. 
# Each widget costs $10, so the program should multiply the quantity by 10 to get the total cost. 
# It should print out a message that includes the quantity the user typed in, and the total cost.

# The store also wants to offer discounts for ordering a lot of widgets at once. 
# So if a user orders 50 or more widgets, they should only be charged $9 per widget. 
# And if a user orders 100 or more widgets, they should only be charged $8 per widget.

# Approach
# - Display welcome message 
# - Ask for quantity
# - Calculate total
# - Discount for large orders

def ask(question)
    print question + " "
    gets.to_i
end

puts "Welcome to the widget store!"
quantity = ask("How many quantity of widgets are you ordering?")
# if quantity >= 50 && quantity < 100
#     total_cost = quantity * 9
# elsif quantity >= 100
#     total_cost = quantity * 8
# else
#     total_cost = quantity * 10
# end
if quantity >= 100
    total_cost = quantity * 8
elsif quantity >= 50
    total_cost = quantity * 9
else
    total_cost = quantity * 10
end

puts "You entered #{quantity} widgets! and your total cost is #{total_cost} "
