class User < ActiveRecord::Base
    has_secure_password

    def balance=(balance = 0)
        self.balance = balance
    end

    def deposit(amount)
        self.balance += amount
        self.balance
    end

    def withdrawal(amount)
        if self.balance >= amount
            self.balance -= amount
        else
            "You are too poor to withdraw money"
        end
        self.balance
    end
    
end
