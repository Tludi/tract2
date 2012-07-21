class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.string :description
      t.decimal :crew
      t.integer :dialyOutput
      t.decimal :laborHours
      t.string :unit
      t.decimal :beforeCostMaterial
      t.decimal :beforeCostLabor
      t.decimal :beforeCostEquipment
      t.decimal :beforeCostTotal
      t.decimal :overheadProfitTotal
      t.integer :costbook_id

      t.timestamps
    end
  end
end
