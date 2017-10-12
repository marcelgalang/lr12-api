class CreateApiV1Rights < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_rights do |t|

      t.timestamps
    end
  end
end
