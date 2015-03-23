class CreateRefills < ActiveRecord::Migration
  def change
    create_table :refills do |t|
      t.integer :amount
      t.timestamps
    end
  end
end
