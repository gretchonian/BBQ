class AlterRfqsAddDate < ActiveRecord::Migration[5.0]
  def change
    add_column :rfqs, :event_date, :date
  end
end
