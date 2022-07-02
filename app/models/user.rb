class User < ApplicationRecord
  validates :username, length: { in: 4..12 }, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, length: { minimum: 8 }, confirmation: true, presence: true

  has_many :posts
end
