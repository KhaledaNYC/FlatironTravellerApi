class City < ApplicationRecord
  has_many :trips
  has_many :travellers, through: :trips
  validates :name, presence: true
  validates :featured_attraction, presence: true
end
