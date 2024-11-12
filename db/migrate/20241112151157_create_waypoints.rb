class CreateWaypoints < ActiveRecord::Migration[8.0]
  def change
    create_table :waypoints do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.datetime :sent_at
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
