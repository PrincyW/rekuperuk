class Wig < ApplicationRecord
  belongs_to :color
  belongs_to :length
  belongs_to :size
  belongs_to :texture
  belongs_to :user, -> { where(admin: true) }
  has_many :acquisitions, -> { where(admin: false) }

  private

  def not_admin?
    admin == false
  end
end
