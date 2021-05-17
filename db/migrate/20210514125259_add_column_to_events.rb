class AddColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :host_id, :integer
  end
end
