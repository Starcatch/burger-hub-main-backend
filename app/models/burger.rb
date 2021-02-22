class Burger < ApplicationRecord
    has_many :order_burgers
    has_many :orders, through: :order_burgers

    # validates :name, presence: true
end
