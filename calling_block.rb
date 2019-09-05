
def get_name(prompt)
    print prompt + ": "
    name = gets.chomp
    yield name
    # name
  end
  
#   calling a block here 
  my_name = get_name("Enter your name") do |your_name|
    puts "#{your_name} is a cool name yo!"
  end
# version 2
  def get_name(prompt, &block)
    print prompt + ": "
    name = gets.chomp
    # explicitly calling block here
    block.call(name)
    # name
  end
  
#   calling a block here 
  my_name = get_name("Enter your name") do |your_name|
    puts "#{your_name} is a cool name yo!"
  end

#   version3 with multiple arguments
def get_name(prompt, &block)
    print prompt + ": "
    name = gets.chomp
    print "Age: "
    age = gets.chomp
    # yield name
    # block.call(name, age)
    yield name, age 
  end
  
  my_name = get_name("Enter your name") do |your_name, age|
    puts "#{your_name} is a cool name yo for #{age} years old!"
  end
# the end of version3 ==