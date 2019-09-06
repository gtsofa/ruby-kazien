require './phone_number'
require './address'

class Contact
    attr_writer :first_name, :middle_name, :last_name
    attr_reader :phone_numbers, :addresses

    def initialize
        @phone_numbers = []
        @addresses = []
    end

    def add_phone_number(kind, number)
        phone_number = PhoneNumber.new
        phone_number.kind = kind
        phone_number.number = number
        phone_numbers.push(phone_number)

    end

    def add_address(kind, street_1, street_2, city, state, postal_code)
        indrizzio = Address.new
        indrizzio.kind = kind
        indrizzio.street_1 = street_1
        indrizzio.street_2 = street_2
        indrizzio.city = city
        indrizzio.state = state
        indrizzio.postal_code = postal_code
        addresses.push(indrizzio) #not @ koz it's attr_reader

    end

    def first_name
        @first_name
    end

    def last_first
        last_first = last_name
        last_first += ", "
        last_first += first_name
        if !middle_name.nil?
            last_first += " "
            last_first += middle_name.slice(0, 1)
            last_first += "."
        end
        last_first


    end

    def middle_name
        @middle_name
    end

    def last_name
        @last_name
    end

    def full_name
        full_name = first_name
        if !middle_name.nil?
            full_name += " "
            full_name += middle_name
        end
        full_name += " "
        full_name += last_name
        "Full Name:" + full_name
    end

    def to_s(format = "full_name")
        case format
        when 'full_name'
            full_name
        when 'last_first'
            last_first
        when 'first_name'
            first_name
        when 'first'
            first_name
        when 'last'
            last_name
        else
            last_first
        end
    end

    def print_phone_numbers
        puts "Phone Numbers"
        phone_numbers.each do |phone_number|
            puts phone_number
        end
    end

    def print_addresses
        puts "Addresses..."
        addresses.each do |address|
            puts address.to_s('short')
        end

    end
end

# testing
# tsofa = Contact.new
# tsofa.first_name = "Tsofa"
# tsofa.last_name = "Nyule"
# tsofa.add_phone_number("Acasa", "123-456-7890")
# tsofa.add_phone_number("Lavoro", "456-7890-888")
# tsofa.add_phone_number("Cellulare", "333-908-765")
# tsofa.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")
# puts tsofa.to_s('last_first')
# puts tsofa.to_s('full_name')--
# puts tsofa.inspect
# tsofa.print_phone_numbers
# tsofa.print_addresses
# puts tsofa.full_name
# puts tsofa.last_first


# sarah = Contact.new
# sarah.first_name = "Sarah"
# sarah.middle_name = "Amore"
# sarah.last_name = "Mio"
# puts sarah.to_s
# puts sarah.to_s('last_first')
# puts sarah.to_s('full_name')
# puts sarah.full_name
# puts sarah.last_first