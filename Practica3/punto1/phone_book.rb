class PhoneBook
    require 'csv'
    require_relative 'contact'

    def initialize
        @contacts = []
    end

    def add_contact(contact)
        @contacts << contact
    end

    def find_contact
        @contacts.each do |contact|

        end
    end

    def find_all_contact
        @contacts
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