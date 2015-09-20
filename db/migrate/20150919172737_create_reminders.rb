class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.belongs_to :user
      t.string :phone
      t.datetime :time

      t.timestamps null: false
    end
  end
end
