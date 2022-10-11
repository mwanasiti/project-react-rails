class CreateUserProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.integer :password

      t.timestamps
    end
  end
end
