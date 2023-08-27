class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.integer :owner_id
      t.string :slug

      t.timestamps
    end
  end
end
