class Chef < ApplicationRecord
  before_save { self.email = email.downcase } 
  validates :chefname, :email, presence: true, length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: {case_sensitive: false}, length: { maximum: 250 }, 
                        format: { with: VALID_EMAIL_REGEX}
  validates :password, presence: true, length: { minimum: 5 }, allow_nil: true
  has_many :recipes, dependent: :destroy 
  has_secure_password 
end 