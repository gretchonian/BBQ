class RemoveDefaultArray < ActiveRecord::Migration[5.0]
  def change
    change_column :rfqs, :meats, :text, array: true, default: nil
  end
end
