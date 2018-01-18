class AddEventtype < ActiveRecord::Migration[5.0]
  def change
    add_column :rfqs, :event_type, :string
  end
end
