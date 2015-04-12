class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :agent_id
      t.integer :time
      t.integer :frequency
      t.integer :feed_amount
      t.timestamps
    end
  end
end
