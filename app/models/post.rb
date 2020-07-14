class Post < ApplicationRecord

  mount_uploader :image, ImageUploader

  has_many :comments
  has_many :category_posts, dependent: :destroy
  has_many :categories, through: :category_posts
  belongs_to :user

  validates :text, presence: true

end
