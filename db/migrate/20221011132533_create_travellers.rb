class CreateTravellers < ActiveRecord::Migration[6.1]
  def change
    create_table :travellers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :mobile
      t.integer :id_passport
      t.string :gender

      t.timestamps
    end
  end
end
