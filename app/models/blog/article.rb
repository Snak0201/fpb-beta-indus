class Blog::Article < ApplicationRecord
  belongs_to :bureau, class_name: 'Blog::Bureau', optional: true
  has_many :jurisdictions, class_name: 'Blog::Jurisdiction', dependent: :destroy
  has_many :committees, through: :jurisdictions, class_name: 'Blog::Committee'

  has_rich_text :content

  validates :title, presence: true
end
