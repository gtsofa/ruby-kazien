require './contact'

class AddressBook
    attr_reader :contacts
    def initialize
        @contacts = []
    end

    def run
        loop do
            puts "Address Book"
            puts "a: Add contact"
            puts "p: Print Address Book"
            puts "e: Exit"
            print "Enter your choice: "
            input = gets.chomp.downcase
            case input
            when 'a'
                add_contact
            when 'p'
                print_contact_list
            when 'e'
                break
            end
        end

    end

    def add_contact
        contact = Contact.new
        print 'First name: '
        contact.first_name = gets.chomp
        print 'Middle name: '
        contact.middle_name = gets.chomp
        print 'Last name: '
        contact.last_name = gets.chomp
        contacts.push(contact)

        loop do
            puts "Add phone number or address?"
            puts "p: Add phone number: "
            puts "a: Add an address: "
            puts "(Any other key go back)"
            response = gets.chomp.downcase
            case response
            when 'a'
            address = Address.new
            print "Address Kind (Home, Work, etc): "
            address.kind = gets.chomp
            print "Address line 1: "
            address.street_1 = gets.chomp
            print "Address line 2: "
            address.street_2 = gets.chomp
            print "City: "
            address.city = gets.chomp
            print "State: "
            address.state = gets.chomp
            print "Postal Code: "
            address.postal_code = gets.chomp
            contact.addresses.push(address)
            when 'p'
                phone = PhoneNumber.new
                print "Phone number kind (Home, Work, etc): "
                phone.kind = gets.chomp
                print "Number: "
                phone.number = gets.chomp
                contact.phone_numbers.push(phone)
            else
                print '\n'
                break
            end

        end
    end

    def print_results(search, results)
        puts search
        results.each do |contact|
            puts contact.to_s('full_name')
            contact.print_phone_numbers
            contact.print_addresses
            puts "\n"
        end
        # print_results("Name search results (#{search})", results)

    end

    def fint_by_name(name)
        results = []
        search = name.downcase
        contacts.each do |contact|
            if contact.first_name.downcase.include?(search) ||
                contact.last_name.downcase.include?(search)
                results.push(contact)
            end
        end
        print_results("Name search results (#{search})", results)

    end

    def find_by_phone_number(number)
        results = []
        search = number.gsub("-", "")
        contacts.each do |contact|
            contact.phone_numbers.each do |phone_number|
                if phone_number.number.gsub("-", "").include?(search)
                    results.push(contact) unless results.include?(contact)
                end
            end
        end

        print_results("Phone search results (#{search})", results)
        
    end

    def find_by_address(query)
        results = []
        search = query.downcase
        contacts.each do |contact|
            contact.addresses.each do |address|
                if address.to_s('long').downcase.include?(search)
                    results.push(contact) unless results.include?(contact)
                end
            end
        end

        print_results("Address search results (#{search})", results)

    end

    def print_contact_list
        puts "Contact List"
        contacts.each do |contact|
            puts contact.to_s('last_first')
        end
    end
end

address_book = AddressBook.new
address_book.run


# tsofa = Contact.new
# tsofa.first_name = "Tsofa"
# tsofa.last_name = "Nyule"
# tsofa.add_phone_number("Acasa", "123-456-7890")
# tsofa.add_phone_number("Lavoro", "456-7890-888")
# tsofa.add_phone_number("Cellulare", "333-908-765")
# tsofa.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")

# maestro = Contact.new
# maestro.first_name = "Maestro"
# maestro.last_name = "Julio"
# maestro.add_phone_number("Acasa", "222-456-7890")
# maestro.add_phone_number("Lavoro", "456-7890-888")
# maestro.add_phone_number("Cellulare", "333-908-765")
# maestro.add_address("Home", "222 Two Lane", "", "Portland", "OR", "12345")

# address_book.contacts.push(tsofa)
# address_book.contacts.push(maestro)
# # address_book.print_contact_list
# # address_book.fint_by_name('n')
# address_book.find_by_phone_number("8")
# address_book.find_by_address("two")
