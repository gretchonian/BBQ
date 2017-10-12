class ChangeFoodsToArray < ActiveRecord::Migration[5.0]
  def change
    remove_column :rfqs, :meats
    remove_column :rfqs, :sides

    add_column :rfqs, :meats, :text, array: true, default:[]
    add_column :rfqs, :sides, :text, array: true, default:[] 
  end
end
