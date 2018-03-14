class RecipesController < ApplicationController

  before_action :find_by_id, only: [:show, :edit, :update]

  def new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end

  private

  def find_by_id
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids: [])
  end

end
