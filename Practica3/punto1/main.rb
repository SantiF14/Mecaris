
require_relative 'phone_book'

book = PhoneBook.new

loop do 
    p "---------------------------------"
    p "Selecciones un numero para realizar una accion"
    p "1 - Ver todos los contactos"
    p "2 - Agregar un contacto"
    p "3 - Editar un contacto"
    p "4 - Buscar un contacto"
    p "5 - Exportar a CSV"
    p "6 - Salir!"

    op = gets.to_i

    case op
    when 1
        book.show_all_contact
    when 2
        book.add_contact
    when 3
        book.edit_contact
    when 4
        book.find_contact
    when 5
        book.export_to_csv
    when 6
        break
    else
        p "Numero invalido"
    end
end



