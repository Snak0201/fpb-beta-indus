class Blog::Jurisdiction < ApplicationRecord
  belongs_to :committee, class_name: "Blog::Committee"
  belongs_to :article, class_name: "Blog::Article"

  validates :committee_id, uniqueness: { scope: :article_id }
end
