# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients = JSON.parse(open(url).read)

# puts 'Destroying ingredients...'
# Ingredient.destroy_all

# ingredients['drinks'].each do |drink|
#   ingr = Ingredient.create(name: drink['strIngredient1'])
#   puts "Creating ingredient...#{drink['strIngredient1']}"
# end
puts 'Destroying cocktails...'
Cocktail.destroy_all

file = URI.open('https://www.umami.site/wp-content/uploads/2016/03/rum-coke-2.jpg')
5.times do
cocktail = Cocktail.new(name: 'Rum&Coke')
cocktail.photo.attach(io: file, filename: 'rumcoke.png', content_type: 'image/png')
end
puts 'Completed...'
