class AddUserToOne < ActiveRecord::Migration[5.0]
  def change
    add_reference :ones, :user, foreign_key: true
  end
end
