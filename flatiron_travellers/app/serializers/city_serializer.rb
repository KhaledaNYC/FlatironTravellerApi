class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :featured_attraction, :travellers
end
