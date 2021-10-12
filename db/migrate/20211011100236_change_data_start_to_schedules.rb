class ChangeDataStartToSchedules < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules,:start,:datetime
    change_column :schedules,:end,:datetime
  end
end
