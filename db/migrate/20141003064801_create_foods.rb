class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
