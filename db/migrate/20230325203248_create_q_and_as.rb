class CreateQAndAs < ActiveRecord::Migration[7.0]
  def change
    create_table :q_and_as do |t|
      t.string :question
      t.string :answer
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
