class AddAgentInfoToAgent < ActiveRecord::Migration
  def change
    add_column :agents, :remaining_food, :integer
    add_column :agents, :ip, :string
  end
end
