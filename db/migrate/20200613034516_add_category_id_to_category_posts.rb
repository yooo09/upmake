class AddCategoryIdToCategoryPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :category_posts, :category, foreign_key: true
  end
end
