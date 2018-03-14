class AddIdToIngredient < ActiveRecord::Migration
  def change
    add_column :Ingredients, :recipe_id, :integer
  end
end
