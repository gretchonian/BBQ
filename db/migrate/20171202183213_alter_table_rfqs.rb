class AlterTableRfqs < ActiveRecord::Migration[5.0]
  def change
    remove_column :rfqs, :count
    add_column :rfqs, :people_attending, :integer
  end
end
