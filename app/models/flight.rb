class Flight < ApplicationRecord
    has_many :traveller_flights
    has_many :travellers, through: :traveller_flights
end
