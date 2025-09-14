class Blog::Bureau < ApplicationRecord
  has_many :articles, class_name: 'Blog::Article'
end
