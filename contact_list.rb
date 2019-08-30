
def ask(question, kind="string")
    print question + " "
    answer = gets.chomp
    answer = answer.to_i if kind == "number"
    return answer
end

def add_contact
    # create a hash of contact
    contact = {"name" => "", "phone_number" => []}
    contact["name"] = ask("What is the person's name?")
    answer = ""
    while answer != "n"
        answer = ask("Would you like to add a phone number? (y/n)")
        if answer == "y"
            phone = ask("Enter a phone number:")
            contact["phone_number"].push(phone)
        end
    end
    return contact
    
end

contact_list = []
answer = ""
while answer != "n"
    contact_list.push(add_contact())
    answer = ask("Add another? (y/n)")
end

# answer = ask("What is your name?")
# puts answer