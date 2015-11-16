class Item < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items

  # after_save :update_cache
  #
  # def update_cache
  #   Rails.cache.clear
  # end
end
