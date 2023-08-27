class AddGameToHouseRules < ActiveRecord::Migration[7.0]
  def change
    add_reference :house_rules, :game, null: false, foreign_key: true
  end
end
