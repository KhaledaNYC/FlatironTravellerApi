class CreateTravellers < ActiveRecord::Migration[5.0]
  def change
    create_table :travellers do |t|
      t.string :name
      t.string :origin

      t.timestamps
    end
  end
end
