# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do |i|
    Movie.create(name: "Soy la pelicula #{i+1}", synopsis: "Soy la sinopsis #{i+1}", director: "Soy el director #{i+1}")
    Serie.create(name: "Soy la serie #{i+1}", synopsis: "Soy la sinopsis #{i+1}", director: "Soy el director #{i+1}")
    DocumentaryFilm.create(name: "Soy el documental #{i+1}", synopsis: "Soy la sinopsis #{i+1}", director: "Soy el director #{i+1}")
  end
