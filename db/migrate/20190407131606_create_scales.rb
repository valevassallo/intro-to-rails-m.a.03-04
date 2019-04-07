class CreateScales < ActiveRecord::Migration[5.2]
  def change
    create_table :scales do |t|
      t.references :trip, foreign_key: true
      t.references :airport, foreign_key: true
      t.integer :ordernum

      t.timestamps
    end
  end
end
