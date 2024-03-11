class Wig < ApplicationRecord
  belongs_to :color
  belongs_to :length
  belongs_to :size
  belongs_to :texture
  belongs_to :user, -> { where(admin: true) }
  has_many :acquisitions, -> { joins(:user).where(users: { admin: false }) }, dependent: :destroy

  private

  def not_admin?
    admin == false
  end
end
