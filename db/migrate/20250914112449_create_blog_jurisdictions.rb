class CreateBlogJurisdictions < ActiveRecord::Migration[8.0]
  def change
    create_table :blog_jurisdictions do |t|
      t.references :committee, null: false, foreign_key: {to_table: :blog_committees}
      t.references :article, null: false, foreign_key: {to_table: :blog_articles}

      t.timestamps
      t.index [:committee_id, :article_id], unique: true
    end
  end
end
