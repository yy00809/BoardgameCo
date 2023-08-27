class CreateGameVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :game_variants do |t|
      t.string :name
      t.string :link
      t.float :price
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
