class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def search
    if params[:search].empty?
      redirect_to root_path
    else
      @param = params[:search].capitalize
      @results = Cocktail.all.where('name LIKE :search', search: @param)
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.photo.attach(io: cocktail_params[:photo], filename: 'uploaded image', content_type: 'image/jpg')
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
