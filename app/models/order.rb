class Order < ApplicationRecord
  belongs_to :user
  has_many :order_burgers
  has_many :burgers, through: :order_burgers
end
