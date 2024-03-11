class DonationsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      redirect_to wigs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:donator_email, :description, photos: [])
  end
end
