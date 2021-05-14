class DropEventAttendees < ActiveRecord::Migration[6.1]
  def up
    drop_table :event_attendees
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
