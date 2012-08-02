class CreateCsiDivisions < ActiveRecord::Migration
  def change
    create_table :csi_divisions do |t|
      t.integer :main_number
      t.string :main_name
      t.integer :sub_number
      t.string :sub_name

      t.timestamps
    end
  end
end
