class Acquisition < ApplicationRecord
  # before_action :user_can_have_only_one_acquisition
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

  validates :delivery_name, :delivery_address, :delivery_city, :delivery_zipcode, presence: true, if: :delivery?
  validates :date_time, presence: true, unless: :delivery?
  validates :medical_reasons, acceptance: { message: "Vous devez attester sur l'honneur que vous avez besoin d'une perruque pour des raisons médicales." }
  # validates :user_can_have_only_one_acquisition, on: :create

  private


  def delivery?
    delivery
  end

  def user_can_have_only_one_acquisition
    if user && user.acquisitions.exists?
      errors.add(:base, "Vous ne pouvez pas prendre plus d'1 perruque gratuitement. Nous dévelopons une option de paiement pour que vous puissiez en avoir plus d'une à l'avenir. Les bénéfices seront versés à l'association.")
    end
  end
end
