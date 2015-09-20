class DropTimeFromReminders < ActiveRecord::Migration
  def change
    remove_column :reminders, :time, :string
  end
end
