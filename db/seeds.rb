# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'agregar 20 peliculas'
movies_created = 0
20.times do |i|
	movie = Movie.create(
		name: Faker::Movie.title,
		synopsis: Faker::Movie.quote,
		director: Faker::Name.name,
	)
	movies_created += 1 if movie.persisted?
end

if movies_created < 20
	puts '¡Error! No se crearon los 20 registros de películas.'
else
	puts '¡Se crearon los 20 registros de películas de forma existosa.'
end

puts 'agregar 20 series'
series_created = 0
20.times do |i|
	serie = Serie.create(
		name: Faker::Movie.title,
		synopsis: Faker::Movie.quote,
		director: Faker::Name.name,
	)
	series_created += 1 if serie.persisted?
end

if series_created < 20
  puts '¡Error! No se crearon los 20 registros de series.'
else
	puts '¡Se crearon los 20 registros de series de forma exitosa.'
end

puts 'agregar 20 documentales'
documentaries_created = 0
20.times do |i|
	documentaryFilm = DocumentaryFilm.create(
		name: Faker::Movie.title,
		synopsis: Faker::Movie.quote,
		director: Faker::Name.name,
	)
	documentaries_created += 1 if documentaryFilm.persisted?
end

if documentaries_created < 20
  puts '¡Error! No se crearon los 20 registros de documentales.'
else
	puts '¡Se crearon los 20 registros de documentales de forma exitosa.'
end
