class AddCountToRfqs < ActiveRecord::Migration[5.0]
  def change
    add_column :rfqs, :count, :string
    add_column :rfqs, :catering_type, :boolean
    change_column :rfqs, :sides, :text, array: true, default: nil
  end
end
