class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :flight_date
      t.string :airline
      t.string :airline_image
      t.string :from
      t.string :to
      t.integer :seats
      t.integer :cost

      t.timestamps
    end
  end
end
