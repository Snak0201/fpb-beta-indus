class CreateBlogBureaus < ActiveRecord::Migration[8.0]
  def change
    create_table :blog_bureaus do |t|
      t.string :name

      t.timestamps
    end
  end
end
