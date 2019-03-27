class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.references :item, foreign_key: true
      t.json :image
    end
  end
end
