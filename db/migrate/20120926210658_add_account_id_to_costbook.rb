class AddAccountIdToCostbook < ActiveRecord::Migration
  def change
    add_column :costbooks, :account_id, :integer
  end
end
