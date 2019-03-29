class RemoveLcategoryFromItem < ActiveRecord::Migration[5.0]
  def up
    remove_column :items, :s_category_id, :integer
    remove_column :items, :m_category_id, :integer
    remove_column :items, :l_category_id, :integer
  end

  def down
    remove_column :items, :s_category_id, :integer
    remove_column :items, :m_category_id, :integer
    remove_column :items, :l_category_id, :integer
  end
end
