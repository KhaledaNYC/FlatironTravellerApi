class Trip < ApplicationRecord
  belongs_to :traveller
  belongs_to :city
end
