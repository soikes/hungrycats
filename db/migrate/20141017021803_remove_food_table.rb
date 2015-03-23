class RemoveFoodTable < ActiveRecord::Migration
  def change
    drop_table :foods
  end
end
