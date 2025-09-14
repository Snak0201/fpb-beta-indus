class Blog::Committee < ApplicationRecord
  belongs_to :bureau, class_name: 'Blog::Bureau', optional: true
  has_many :jurisdictions, class_name: 'Blog::Jurisdiction', dependent: :destroy
  has_many :articles, through: :jurisdictions, class_name: 'Blog::Article'

  validates :name, presence: true
end
