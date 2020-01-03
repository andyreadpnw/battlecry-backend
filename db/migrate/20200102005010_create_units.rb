class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :name
      t.string :coords
      t.integer :health
      t.string :nation
      t.integer :game_id

      t.timestamps
    end
  end
end
