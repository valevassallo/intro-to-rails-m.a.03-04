class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :airplane, foreign_key: true
      t.integer :freespots

      t.timestamps
    end
  end
end
