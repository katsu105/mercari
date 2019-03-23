class RemoveLcategoryFromItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :s_category_id, :integer
    remove_column :items, :m_category_id, :integer
    remove_column :items, :l_category_id, :integer
  end
end
