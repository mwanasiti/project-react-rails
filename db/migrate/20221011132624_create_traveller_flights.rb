class CreateTravellerFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :traveller_flights do |t|
      t.belongs_to :traveller, foreign_key: true
      t.belongs_to :flight, foreign_key: true

      t.timestamps
    end
  end
end
