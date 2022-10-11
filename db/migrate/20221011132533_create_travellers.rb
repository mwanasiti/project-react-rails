class CreateTravellers < ActiveRecord::Migration[6.1]
  def change
    create_table :travellers do |t|

      t.timestamps
    end
  end
end
