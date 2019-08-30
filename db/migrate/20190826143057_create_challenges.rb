class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :name
      t.integer :duration
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :image
      t.string :photo
      t.integer :reward
      t.string :address
      t.integer :coordinates, array: true, default: []

      t.timestamps
    end
  end
end
