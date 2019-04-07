class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.string :airplanemodel
      t.integer :capacity

      t.timestamps
    end
  end
end
