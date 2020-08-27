class Api::V1::RecipesController < ApplicationController
  require 'nkf'

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

  def search
    search_word_str = params[:search_word]
    search_words = search_word_str.split(/ |　/).flatten
    search_words.map!{|word| to_hiragana(word)}
    filtered_recipes = []
    search_words.each do |search_word|
      filtered_recipes << Recipe.all.select do |recipe|
        to_hiragana(recipe.title).include?(search_word) ||
        to_hiragana(recipe.description).include?(search_word) ||
        recipe.ingredients.pluck(:name).map{|name| to_hiragana(name) }.any?{|name| name.include?(search_word)}
      end
    end
    filtered_recipes.flatten!
    search_results = filtered_recipes
    if search_words.size > 1
      search_results = filtered_recipes.subtract_once(filtered_recipes.uniq)
    end
    p search_results
    render :json => {"recipes": search_results}
  end

  private

  def to_hiragana(str)
    str = NKF.nkf('-w --hiragana', str)
    str
  end
end
