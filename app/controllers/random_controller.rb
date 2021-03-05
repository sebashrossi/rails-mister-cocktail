class RandomController < ApplicationController
  def create
    @cocktail = Cocktail.getRandom
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end
end
