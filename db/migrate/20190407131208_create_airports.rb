class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.boolean :active

      t.timestamps
    end
  end
end
