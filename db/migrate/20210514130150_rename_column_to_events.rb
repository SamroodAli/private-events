class RenameColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :host_id, :creator_id
  end
end
