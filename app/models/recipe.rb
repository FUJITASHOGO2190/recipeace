class Recipe < ApplicationRecord
  validates :dish_name, presence: true
  validates :cook_method, presence: true
end
