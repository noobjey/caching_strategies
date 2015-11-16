class Order < ActiveRecord::Base
  belongs_to :user

  # after_save :update_cache
  #
  # def update_cache
  #   Rails.cache.clear
  # end

  has_many :order_items
  has_many :items, through: :order_items
end
