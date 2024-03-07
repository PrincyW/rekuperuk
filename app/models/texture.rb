class Texture < ApplicationRecord
  has_many :wigs
  validates :name, presence: true
  validates :icon, presence: true
end
