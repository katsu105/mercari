class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :text, null: false
      t.text :image
      t.string :price
      t.timestamps
    end
  end
end
