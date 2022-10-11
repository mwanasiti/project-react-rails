class TravellerFlight < ApplicationRecord
    belongs_to :traveller
    belongs_to :flight
end
