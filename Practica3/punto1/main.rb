require_relative 'phone_book'
require_relative 'contact'

phoneBook = PhoneBook.new

contact1 =  Contact.new('santi', '19-12-1999', 'santi@yahoo.com', '223457778', 'Calle 56')
contact2 =  Contact.new('mati', '19-11-1995', 'santi1@yahoo.com', '2234572778', 'Calle 57')
contact3 =  Contact.new('jorge', '19-2-1969', 'santi12@yahoo.com', '2234577378', 'Calle 58')

phoneBook.add_contact(contact1)
phoneBook.add_contact(contact2)
phoneBook.add_contact(contact3)

p phoneBook.find_all_contact
phoneBook.export_to_csv