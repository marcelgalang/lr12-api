class AddDurationToRights < ActiveRecord::Migration[5.0]
  def change
    add_column :rights, :duration, :integer
  end
end
