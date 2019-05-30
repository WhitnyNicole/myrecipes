class ChangeColumnToPasswordDigest < ActiveRecord::Migration[5.0]
  def change
    rename_column :chefs, :password, :password_digest
  end
end
