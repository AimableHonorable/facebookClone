class User < ApplicationRecord
  validates :first_name, presence: true,length: { maximum: 100 }
  validates :last_name, presence: true, length: { maximum: 100 }
  validates :email, presence:true, length: { maximum: 100 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
   
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :posts
end
