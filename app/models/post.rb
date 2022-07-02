class Post < ApplicationRecord
  validates :title, presence: true
  validates :link, presence: true

  belongs_to :user
end
