class AddStatusToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :status, :integer, null:false
    add_column :items, :shipping_cost, :integer, null:false
    add_column :items, :prefectures, :integer, null:false 
  end
end
