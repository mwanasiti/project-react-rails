class Traveller < ApplicationRecord
    validates :first_name, :last_name, :email, :id_passport, presence: true

    has_many :traveller_flights
    has_many :flights, through: :traveller_flights
end
