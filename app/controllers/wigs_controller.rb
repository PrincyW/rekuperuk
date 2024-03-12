class WigsController < ApplicationController


  before_action :set_wig, only: [:show, :recap]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @wigs = Wig.all
  end

  def show
  end

  # Temporary route for page where customer can see the recap of their order
  def recap
    if current_user.acquisitions.exists?
      flash[:alert] = "Vous avez déjà réservé une perruque."
      redirect_to wigs_path
    end
  end

  private

  def set_wig
    @wig = Wig.find(params[:id])
  end
end
