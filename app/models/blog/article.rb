class Blog::Article < ApplicationRecord
  belongs_to :bureau, class_name: 'Blog::Bureau', optional: true
end
