class AddMemoToSchedule < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :memo, :text
    remove_column :schedules, :status, :text
  end
end
