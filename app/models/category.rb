class Category < ApplicationRecord
  belongs_to :parent_category, class_name: 'Category', optional: true, foreign_key: :category_id
  has_many :children_categories, class_name: 'Category', dependent: :destroy
  has_many :bookmarks

end
