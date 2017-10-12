class RemoveCountFromRights < ActiveRecord::Migration[5.0]
  def change
    remove_column :rights, :count
  end
end
