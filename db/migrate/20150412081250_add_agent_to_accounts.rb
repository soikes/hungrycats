class AddAgentToAccounts < ActiveRecord::Migration
  def change
    add_column :agents, :account_id, :integer
  end
end
