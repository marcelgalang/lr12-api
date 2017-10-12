class AddDurationAndUserToRight < ActiveRecord::Migration[5.0]
  def change
    add_reference :rights, :user, foreign_key: true
    add_column :rights, :count, :integer
  end
end
