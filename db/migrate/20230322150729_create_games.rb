class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :number_of_players
      t.integer :age_limit
      t.text :desctription
      t.text :rules
      t.float :rate

      t.timestamps
    end
  end
end
