class CreateCategoryPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :category_posts do |t|

      t.timestamps
    end
  end
end
