class Acquisition < ApplicationRecord
  CITIES = [
    "Paris", "Marseille", "Lyon", "Toulouse", "Nice", "Nantes", "Strasbourg", "Montpellier",
    "Bordeaux", "Lille", "Rennes", "Reims", "Le Havre", "Cergy-Pontoise", "Saint-Étienne",
    "Toulon", "Angers", "Grenoble", "Dijon", "Nîmes"
  ]

  belongs_to :wig
  belongs_to :user
  # validates :delivery_name, :delivery_address, :delivery_city, :delivery_zipcode, presence: true, if: :delivery?
  # validates :delivery_name, :delivery_address, :delivery_city, :delivery_zipcode, absence: true, if: :not_delivery?
  # validates :date_time, presence: true, if: :not_delivery?
  # validates :date_time, absence: true, if: :delivery?

  validates :delivery_name, :delivery_address, :delivery_city, :delivery_zipcode, presence: true, if: :delivery
  validates :date_time, presence: true, if: :not_delivery?
  validates :user_can_have_only_one_acquisition, on: :create

  private

  def not_delivery?
    delivery == false
  end

  def user_can_have_only_one_acquisition
    if user && user.acquisitions.exists?
      errors.add(:base, "You can only have one acquisition at a time.")
    end
  end

  # def not_delivery?
  #   !delivery
  # end
end
