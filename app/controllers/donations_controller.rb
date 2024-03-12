class DonationsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:new, :create, :confirmation]

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      redirect_to confirmation_donation_path(@donation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Method associated with route towards donation confirmation
  def confirmation
  end

  private

  def donation_params
    params.require(:donation).permit(:donator_email, :description, photos: [])
  end
end
