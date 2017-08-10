class CocktailsController < ApplicationController
   before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    if cocktail.update(cocktail_params)

    end

  def destroy
    @cocktail = cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

 private

 def cocktail_param
    params.require()
  end
end
end
