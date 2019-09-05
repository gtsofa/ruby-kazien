class Contact
    attr_writer :first_name, :middle_name, :last_name

    def first_name
        @first_name
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
end

# testing
tsofa = Contact.new
tsofa.first_name = "Tsofa"
tsofa.last_name = "Nyule"
puts tsofa.full_name

sarah = Contact.new
sarah.first_name = "Sarah"
sarah.middle_name = "Amore"
sarah.last_name = "Mio"
puts sarah.full_name