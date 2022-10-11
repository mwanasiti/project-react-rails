class TravellerFlightSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :flights

  def id
    self.object.traveller.id
  end

  def first_name
    self.object.traveller.first_name
  end

  def last_name
    self.object.traveller.last_name
  end

  def flights
    self.object.traveller.flights.map do |t|
      {id: t.id airline: t.airline}
    end
end
