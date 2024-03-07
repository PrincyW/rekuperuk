class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :acquisitions
  has_many :wigs, -> { where(admin: true) }
  validates :username, presence: true
  validates :avatar_url, presence: true
end
