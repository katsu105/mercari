class AddShipDateToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :ship_date, :integer, null:false
  end
end
