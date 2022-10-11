class FlightSerializer < ActiveModel::Serializer
  attributes :airline, :airline_image, :from, :to, :seats, :cost
end
