class Item < ApplicationRecord
  enum status: [:unused, :c_new, :n_dirt, :l_dirt, :dirt, :bad]
  enum shipping_cost: [:seller, :buyer]
  enum prefectures:[:hokkaido, :aomori, :iwate, :miyagi, :akita]
  enum ship_date: [:one_two, :two_three, :four_seven]

  has_many :images, inverse_of: :item,  :dependent => :destroy
  belongs_to :category
  accepts_nested_attributes_for :images

  mount_uploaders :image, ImageUploader

  validates :nickname, presence: true
end
