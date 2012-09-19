class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :level
      t.string :owner

      t.timestamps
    end
  end
end
