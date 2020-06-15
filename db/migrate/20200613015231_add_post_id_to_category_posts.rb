class AddPostIdToCategoryPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :category_posts, :post, foreign_key: true
  end
end
