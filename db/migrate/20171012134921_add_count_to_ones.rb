class AddCountToOnes < ActiveRecord::Migration[5.0]
  def change
    add_column :ones, :count, :integer
  end
end
