class AddIndexToSubcategoriesSubcategoryName < ActiveRecord::Migration
  def change
  	add_index :subcategories, :subcategory_name, unique: true
  end
end
