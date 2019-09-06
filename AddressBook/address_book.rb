require './contact'

class AddressBook
    attr_reader :contacts
    def initialize
        @contacts = []
    end

    def print_contact_list
        puts "Contact List"
        contacts.each do |contact|
            puts contact.to_s('last_first')
        end
    end
end

address_book = AddressBook.new

tsofa = Contact.new
tsofa.first_name = "Tsofa"
tsofa.last_name = "Nyule"
tsofa.add_phone_number("Acasa", "123-456-7890")
tsofa.add_phone_number("Lavoro", "456-7890-888")
tsofa.add_phone_number("Cellulare", "333-908-765")
tsofa.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")

maestro = Contact.new
maestro.first_name = "Maestro"
maestro.last_name = "Julio"
maestro.add_phone_number("Acasa", "123-456-7890")
maestro.add_phone_number("Lavoro", "456-7890-888")
maestro.add_phone_number("Cellulare", "333-908-765")
maestro.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")

address_book.contacts.push(tsofa)
address_book.contacts.push(maestro)
address_book.print_contact_list