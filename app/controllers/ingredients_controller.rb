class IngredientsController < ApplicationController

  before_action :find_by_id, only: [:show, :edit, :update]

  def new
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  def show

  end

  def edit
  end

  def update
    @ingredient.update(ingredient_params)
    redirect_to ingredient_path(@ingredient)
  end

  private

  def find_by_id
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
