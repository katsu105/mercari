class Item < ApplicationRecord
  enum l_category_id: [:women, :mens, :kids]
  enum m_category_id: [:outer, :tops]
  enum s_category_id: [:jacket, :pants, :skirt]
  enum status: [:unused, :c_new, :n_dirt, :l_dirt, :dirt, :bad]
  enum shipping_cost: [:seller, :buyer]
  enum prefectures:[:hokkaido, :aomori, :iwate, :miyagi, :akita]
  enum ship_date: [:one_two, :two_three, :four_seven]

  has_many :images, inverse_of: :item,  :dependent => :destroy
  belongs_to :category
  accepts_nested_attributes_for :images


  mount_uploaders :image, ImageUploader
end
