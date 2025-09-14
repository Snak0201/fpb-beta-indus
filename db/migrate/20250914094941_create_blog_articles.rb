class CreateBlogArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :blog_articles do |t|
      t.string :title
      t.references :bureau, null: true, foreign_key: { to_table: :blog_bureaus }

      t.timestamps
    end
  end
end
