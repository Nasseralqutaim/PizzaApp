class Pizza < ApplicationRecord
  validates :name, uniqueness: true
  has_many :pizza_toppings
  has_many :toppings, through: :pizza_toppings
  validates :name, presence: true, uniqueness: true
end