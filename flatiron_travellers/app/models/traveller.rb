class Traveller < ApplicationRecord
  has_many :trips
  has_many :cities, through: :trips
  validates :name, presence: true
  validates :origin, presence: true
end
