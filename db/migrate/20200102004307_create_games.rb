class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :turn
      t.string :phase

      t.timestamps
    end
  end
end
