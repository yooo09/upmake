class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :text, presence: true
  belongs_to :user
  has_many :comments
  has_many :category_posts, dependent: :destroy
  has_many :categories, through: :category_posts

  # def save_posts(categories)
  #   current_categories = self.categories.pluck(:category_title) unless self.categories.nil?
  #   old_categories = current_categories - categories
  #   new_categories = categories - current_categories
  
  #   # Destroy
  #   old_categories.each do |old_title|
  #     self.categories.delete Category.find_by(category_title:old_title)
  #   end

  #   # Create
  #   new_categories.each do |new_title|
  #     post_category = Category.find_or_create_by(category_title:new_title)
  #     self.categories << post_category
  #   end
  # end

end
