class CreateTravellerFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :traveller_flights do |t|

      t.timestamps
    end
  end
end
