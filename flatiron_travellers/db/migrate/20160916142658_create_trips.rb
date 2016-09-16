class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.belongs_to :traveller, foreign_key: true
      t.belongs_to :city, foreign_key: true

      t.timestamps
    end
  end
end
