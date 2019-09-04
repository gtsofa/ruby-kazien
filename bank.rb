class BankAccount
    attr_reader :name
    
    def initialize(name)
        @name = name
        @transactions = []
        add_transaction("Avaible Balance", 0)

    end
    
    def credit(description, amount)
        add_transaction(description, amount)
    end
    
    def debit(description, amount)
        add_transaction(description, -amount)
    end

    def add_transaction(description, amount)
        @transactions.push(description: description, amount: amount)
    end

end
account_name = BankAccount.new("Maestro")
account_name.credit("Monkey Dance", 100)
account_name.debit("House Rent", 30)
puts account_name.inspect