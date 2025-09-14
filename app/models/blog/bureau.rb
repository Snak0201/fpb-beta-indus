class Blog::Bureau < ApplicationRecord
  has_many :articles, class_name: 'Blog::Article'
  has_many :committees, class_name: 'Blog::Committee'

  validates :name, presence: true
end
