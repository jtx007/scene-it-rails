class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :movies, through: :posts
  has_many :comments
  validates :username, uniqueness: true
  validates :password, length: { minimum: 5, maxmimum: 50 }
    

end
