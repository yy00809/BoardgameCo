class RenameDesctriptionToDescription < ActiveRecord::Migration[7.0]
  def change
    rename_column :games, :desctription, :description
  end
end
