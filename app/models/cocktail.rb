class Cocktail < ApplicationRecord
  has_many :doses, class_name: "dose", foreign_key: "dose_id"
  validates :name, presence: true
end
