class CreateBlogCommittees < ActiveRecord::Migration[8.0]
  def change
    create_table :blog_committees do |t|
      t.string :name
      t.references :bureau, null: true, foreign_key: { to_table: :blog_bureaus }

      t.timestamps
    end
  end
end
