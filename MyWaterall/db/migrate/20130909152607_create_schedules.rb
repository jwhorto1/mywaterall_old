class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :schedule
      t.integer :user_id

      t.timestamps
    end
    add_index :schedules, [:user_id, :created_at]
  end
end
