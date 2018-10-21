class AlterRfqsAddClmns < ActiveRecord::Migration[5.0]
  def change
    add_column :rfqs, :meats, :string, optional: true
    add_column :rfqs, :sides, :string, optional: true
  end
end
