class AddColumnToLefts < ActiveRecord::Migration[5.0]
  def change
    add_column :lefts, :duration, :integer
    add_column :lefts, :start, :datetime
    add_column :lefts, :end, :datetime
  end
end
