# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
terror = Category.create!(name: "Terror", description: "El cine de terror es un género cinematográfico que se caracteriza por su voluntad de provocar en el espectador sensaciones de pavor, terror, miedo, disgusto, repugnancia, horror, incomodidad o preocupación.")
accion = Category.create!(name: "Acción", description: "Los elementos más frecuentes de una película de acción son persecuciones, tiroteos, feroces batallas entre humanos o animales, artes marciales y luchas callejeras, armas de fuego y cuchillos, explosiones, robos, secuestros, asaltos y cualquier otra cosa que genere adrenalina.")
musical = Category.create!(name: "Musical", description: "El cine musical alude a todas aquellas producciones cinematográficas que incluyen canciones.")


# CATEGORIA TERROR
Movie.create!(name: "La bruja", description: "La desesperación por la falta de cosechas, y la desaparición del hijo recién nacido, crean rencillas entre los devotos parientes que no dudan en acusarse unos a otros de todos los males mientras, por si acaso, vigilan el bosque de reojo.", year: 2015, ranking: 3, category: terror)
Movie.create!(name: "El conjuro", description: "Ed y Lorraine Warren dedicaron su vida a estudiar casas encantadas y ayudar a sus habitantes a desembarazarse de espíritus y demonios. En este título conocemos a los Perron, una familia que, a principios de los 70, vivió toda una pesadilla en su caserón de Rhode Island.", year: 2013, ranking: 4, category: terror)
Movie.create!(name: "La cosecha", description: "La desesperación por la falta de cosechas, y la desaparición del hijo recién nacido, crean rencillas entre los devotos parientes que no dudan en acusarse unos a otros de todos los males mientras, por si acaso, vigilan el bosque de reojo.", year: 2015, ranking: 3, category: terror)

# CATEGORIA ACCIÓN
Movie.create!(name: "Aquaman", description: "Aquaman debe recuperar el legendario Tridente de Atlan para salvar a la ciudad subacuática de Atlantis, y al mundo de la superficie, de su hermano hambriento de poder.", year: 2018, ranking: 5, category: accion)
Movie.create!(name: "Spider-Man", description: "Un tímido estudiante se vuelve en un luchador contra el crimen, desde que la picadura de una araña mutante le da poderes extraordinarios.", year: 2002, ranking: 2, category: accion)
Movie.create!(name: "Mad Max: furia en el camino", description: "Aunque está decidido a vagar solo por el páramo post-apocalíptico, Mad Max se une a Furiosa, una comandante fugitiva, y su banda, quienes están tratando de escapar de un señor de la guerra.", year: 2015, ranking: 5, category: accion)

# CATEGORIA MUSICAL
Movie.create!(name: "La LA Land", description: "Sebastian, un pianista de jazz, y Mia, una aspirante a actriz, se enamoran locamente; pero la ambición desmedida que tienen por triunfar en sus respectivas carreras, en una ciudad como Los Ángeles, repleta de competencia y carente de piedad, pone en peligro su amor.", year: 2016, ranking: 5, category: musical)
Movie.create!(name: "El gran showman", description: "El gran showman es una película dirigida por Michael Gracey y protagonizada por Hugh Jackman. Basada en la historia real de fundador del circo Ringling Brothers and Barnum & Bailey Circus.", year: 2017, ranking: 5, category: musical)
Movie.create!(name: "High School Musical", description: "Los estudiantes conspiran para evitar que la estrella del baloncesto, Troy Bolton, y la tímida novata, Gabriella Montez, canten en una producción teatral.", year: 2006, ranking: 2, category: musical)
