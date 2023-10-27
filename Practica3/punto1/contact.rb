class Contact
    attr_accessor :name, :b_date, :email, :phone, :address

    def initialize(name, b_date, email, phone, address)
        @name = name
        @b_date = b_date
        @email = email
        @phone = phone
        @address = address
    end
end
 