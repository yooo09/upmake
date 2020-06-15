class Category < ApplicationRecord
  has_many :category_posts, dependent: :destroy
  has_many :posts, through: :category_posts
  validates :title, presence: true
end
