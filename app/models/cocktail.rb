class Cocktail < ApplicationRecord
  has_one_attached :photo
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true

  def self.getRandom
    cocktail = Cocktail.new(name: Faker::Movies::HarryPotter.unique.spell)
    file = URI.open(Faker::LoremFlickr.image(size: '1200x900', search_terms: ['cocktail']))
    cocktail.photo.attach(io: file, filename: 'uploaded image', content_type: 'image/jpg')
    cocktail
  end
end
