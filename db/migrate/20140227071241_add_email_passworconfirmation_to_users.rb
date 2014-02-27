class AddEmailPassworconfirmationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_confirmation, :string
    add_column :users, :email, :role
  end
end
