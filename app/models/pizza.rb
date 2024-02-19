class Pizza < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :pizza_toppings, dependent: :destroy
  has_many :toppings, through: :pizza_toppings
end