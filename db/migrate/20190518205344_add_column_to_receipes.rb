class AddColumnToReceipes < ActiveRecord::Migration[5.0]
  def change
     add_column :recipes, :name, :string
     add_column :recipes, :description, :string
     add_column :recipes, :created_at, :datetime
     add_column :recipes, :updated_at, :datetime
  end
end
