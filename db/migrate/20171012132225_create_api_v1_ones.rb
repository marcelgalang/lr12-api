class CreateApiV1Ones < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_ones do |t|

      t.timestamps
    end
  end
end
