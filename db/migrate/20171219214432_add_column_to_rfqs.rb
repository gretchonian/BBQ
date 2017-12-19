class AddColumnToRfqs < ActiveRecord::Migration[5.0]
  def change
    add_column :rfqs, :company_name, :string
  end
end
