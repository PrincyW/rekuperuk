class Color < ApplicationRecord
  has_many :wigs
  validates :name, presence: true
  validates :hexa, presence: true
end
