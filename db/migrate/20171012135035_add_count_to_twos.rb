class AddCountToTwos < ActiveRecord::Migration[5.0]
  def change
    add_column :twos, :count, :integer
  end
end
