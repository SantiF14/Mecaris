class PhoneBook
    require 'csv'
    require_relative 'contact'

    def initialize
        @contacts = []
    end

    def add_contact()
        p "Inserte nombre"
        name = gets.chomp
        p "Inserte fecha de nacimiento"
        b_date = gets.chomp
        p "Inserte email"
        email = gets.chomp
        p "Inserte numero de telefono"
        phone = gets.chomp
        p "Inserte direccion"
        address = gets.chomp

        contact = Contact.new(name,b_date,email,phone,address)

        @contacts << contact
    end

    def find_contact
        p "Ingrese numero de identificacion del contacto (numero mayor a 0)"
        id = gets.to_i
        id = id -1
        if id >= 0 && id < @contacts.length
            p "nombre: #{@contacts[id].name}/ mail #{@contacts[id].email}"
        else
            p "No existe un contacto con ese id"
        end
    end

    def show_all_contact
        @contacts.each do |contact|
            p "nombre: #{contact.name}/ mail #{contact.email}"
        end
    end

    def edit_contact
        p "Ingrese numero de identificacion del contacto"
        id = gets.to_i

        if id >= 0 && id < @contacts.length
            p "Inserte nombre (si desea dejar el mismo presione enter)"
            name = gets.chomp
            p "Inserte fecha de nacimiento (si desea dejar el mismo presione enter)"
            b_date = gets.chomp
            p "Inserte email (si desea dejar el mismo presione enter)"
            email = gets.chomp
            p "Inserte numero de telefono (si desea dejar el mismo presione enter)"
            phone = gets.chomp
            p "Inserte direccion (si desea dejar el mismo presione enter)" 
            address = gets.chomp

            contact = @contacts[id]
            if name != ""
                contact.name=name
            end
            if b_date != ""
                contact.b_date=b_date
            end
            if email != ""
                contact.email=email
            end
            if phone != ""
                contact.phone=phone
            end
            if address != ""
                contact.address=address
            end
        else
            p "No existe un contacto con ese  id"
        end
    end

    def export_to_csv
        CSV.open('export.csv', 'w') do |csv|
            csv << ['name','b_date','email','phone','address']
            @contacts.each do |row|
                csv << [row.name, row.b_date, row.email, row.phone, row.address]
            end
        end
    end
end