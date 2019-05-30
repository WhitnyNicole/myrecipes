class AddColumnToChefs < ActiveRecord::Migration[5.0]
  def change
    add_column :chefs, :password_digest, :string
    add_column :chefs, :password_confirmation, :string 
  end
end
