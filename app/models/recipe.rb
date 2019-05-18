class Recipe < ApplicationRecord
  validates :name, :description, presence: true, length: { minimum: 5, maximum: 500 }

end 