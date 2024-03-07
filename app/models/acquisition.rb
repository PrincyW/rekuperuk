class Acquisition < ApplicationRecord
  belongs_to :wig
  belongs_to :user
  # validates :delivery_name, :delivery_address, :delivery_city, :delivery_zipcode, presence: true, if: :delivery?
  # validates :delivery_name, :delivery_address, :delivery_city, :delivery_zipcode, absence: true, if: :not_delivery?
  # validates :date_time, presence: true, if: :not_delivery?
  # validates :date_time, absence: true, if: :delivery?

  validates :delivery_name, :delivery_address, :delivery_city, :delivery_zipcode, presence: true, if: :delivery
  validates :date_time, presence: true, if: :not_delivery?

  private

  def not_delivery?
    delivery == false
  end

  # def not_delivery?
  #   !delivery
  # end
end
