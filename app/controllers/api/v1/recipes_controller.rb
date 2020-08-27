class Api::V1::RecipesController < ApplicationController
  def index
    tag_id = params[:tag_id].to_i
    recipes = []
    if tag_id == 0
      recipes = Recipe.all
    else
      recipes = Recipe.where(id: RecipeTag.where(tag_id: tag_id).pluck(:recipe_id))
    end
    render :json => { "recipes": recipes }
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe.to_json(:include => [:ingredients])
  end
end
