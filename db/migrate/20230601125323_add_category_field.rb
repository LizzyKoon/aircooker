class AddCategoryField < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :food_category, :string
  end
end
