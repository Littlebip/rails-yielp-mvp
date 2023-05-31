class RemoveCategoriesFromRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :categories
  end
end
