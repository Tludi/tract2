class CreateTakeoffs < ActiveRecord::Migration
  def change
    create_table :takeoffs do |t|
      t.string :walltype
      t.string :item
      t.string :level
      t.decimal :length
      t.decimal :height
      t.string :material
      t.integer :project_id

      t.timestamps
    end
  end
end
