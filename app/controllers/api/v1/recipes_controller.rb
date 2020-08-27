class Api::V1::RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render :json => { "recipes": recipes }
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe.to_json(:include => [:ingredients])
  end
end
