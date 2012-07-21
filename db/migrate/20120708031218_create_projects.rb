class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :contact
      t.date :bidDate

      t.timestamps
    end
  end
end
