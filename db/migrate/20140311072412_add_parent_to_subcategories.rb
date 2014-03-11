class AddParentToSubcategories < ActiveRecord::Migration
  def change
    add_column :subcategories, :parent, :string
  end
end
