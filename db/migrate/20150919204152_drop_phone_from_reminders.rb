class DropPhoneFromReminders < ActiveRecord::Migration
  def change
    remove_column :reminders, :phone, :string
  end
end
