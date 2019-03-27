class Item < ApplicationRecord
  enum status: [:unused, :c_new, :n_dirt, :l_dirt, :dirt, :bad]
  enum ship_date: [:one_two, :two_three, :four_seven]

  has_many :images, inverse_of: :item,  :dependent => :destroy
  belongs_to :category
  accepts_nested_attributes_for :images

  mount_uploaders :image, ImageUploader

  validates :name, presence: true
  validates :text, presence: true
  validates :category_id, presence: true
  validates :status, presence: true
  validates :shipping_cost, presence: true
  validates :shipping_method, presence: true
  validates :prefectures, presence: true
  validates :ship_date, presence: true
  validates :price, presence: true
end