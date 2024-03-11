class Donation < ApplicationRecord
  validates :donator_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :description, presence: true
  has_many_attached :photos
end
