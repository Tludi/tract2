class CreateCostbooks < ActiveRecord::Migration
  def change
    create_table :costbooks do |t|
      t.string :name
      t.string :material
      t.decimal :material_cost
      t.decimal :labor_cost
      t.string :division

      t.timestamps
    end
  end
end
