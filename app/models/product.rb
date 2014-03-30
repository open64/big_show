class Product < ActiveRecord::Base
  belongs_to :catalog
  has_many :line_items
end
