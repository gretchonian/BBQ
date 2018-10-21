class AnotherMigration < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :type, :string
    add_column :foods, :rfq_id, :integer
    add_column :foods, :selected, :boolean, default: false

  end
end
