require_relative 'socio'
require_relative 'pelicula'
require_relative 'administrador'




pelicula1 = Pelicula.new("Video",9)
pelicula2 = Pelicula.new("DVD",16)
pelicula3 = Pelicula.new("BlueRay",26)

socioVIP = Socio.new("Juan","VIP")
socio = Socio.new("Jose","normal")


adm = Administrador.new

p adm.consultar_precio(socioVIP,pelicula1)
p adm.consultar_precio(socio,pelicula1)

adm.alquilar_pelicula(socioVIP,pelicula2)
adm.alquilar_pelicula(socio,pelicula1)

