class AddColumnTitiles < ActiveRecord::Migration[5.0]
  def up
    add_column :items, :shipping_method, :string
  end

  def down
    add_column :items, :shipping_method, :string
  end
end
