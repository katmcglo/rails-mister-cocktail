class Ingredient < ApplicationRecord
  has_many :doses, class_name: "dose", foreign_key: "dose_id"
end
