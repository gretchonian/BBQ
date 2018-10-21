class AlterRfqsAddComments < ActiveRecord::Migration[5.0]
  def change
    add_column :rfqs, :comments, :text
  end
end
