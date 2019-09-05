class Contact
    attr_writer :first_name, :middle_name, :last_name

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
        full_name
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
end

# testing
tsofa = Contact.new
tsofa.first_name = "Tsofa"
tsofa.last_name = "Nyule"
puts tsofa.to_s
puts tsofa.to_s('last_first')
puts tsofa.to_s('full_name')
# puts tsofa.full_name
# puts tsofa.last_first


sarah = Contact.new
sarah.first_name = "Sarah"
sarah.middle_name = "Amore"
sarah.last_name = "Mio"
puts sarah.to_s
puts sarah.to_s('last_first')
puts sarah.to_s('full_name')
# puts sarah.full_name
# puts sarah.last_first