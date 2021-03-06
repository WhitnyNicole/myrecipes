class Recipe < ApplicationRecord
  validates :name, :chef_id, presence: true 
  validates :description, presence: true, length: { minimum: 5, maximum: 500 }
  belongs_to :chef 
  default_scope -> { order(updated_at: :desc)}

end 