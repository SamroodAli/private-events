class AddColumnsToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :attendee_id, :integer
    add_column :tickets, :event_id, :integer
  end
end
