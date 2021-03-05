class RandomController < ApplicationController
  require 'faker'
  def create
    @cocktail = Cocktail.new(name: Faker::Movies::HarryPotter.spell)
    @cocktail.photo.attach(io: Faker::LoremFlickr.image(size: "1200x900", search_terms: ['sports']), filename: 'uploaded image', content_type: 'image/jpg')
  end
end
