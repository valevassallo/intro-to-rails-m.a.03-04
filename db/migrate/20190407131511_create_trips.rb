class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.references :flight, foreign_key: true
      t.references :program, foreign_key: true
      t.date :date
      t.references :airportout, :references => "airport"
      t.references :airportin, :references => "airport"

      t.timestamps
    end
  end
end
