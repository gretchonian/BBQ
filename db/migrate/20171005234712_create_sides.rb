class CreateSides < ActiveRecord::Migration[5.0]
  def change
    create_table :sides do |t|

      t.timestamps
    end
  end
end
