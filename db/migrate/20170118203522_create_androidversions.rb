class CreateAndroidversions < ActiveRecord::Migration[5.0]
  def change
    create_table :androidversions do |t|
      t.string :ver
      t.string :name
      t.string :api

      t.timestamps
    end
  end
end
