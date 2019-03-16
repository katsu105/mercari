class ChangeDatatypePrefectureOfItems < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :prefectures, :string
  end
end
