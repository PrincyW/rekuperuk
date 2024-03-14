class AcquisitionsController < ApplicationController
  before_action :set_wig, only: [:new, :create]

  def new
    @acquisition = Acquisition.new
  end

  def create
    # Check if the current user already has an acquisition
    if current_user.acquisitions.exists?
      flash[:alert] = "Vous avez déjà réservé une perruque."
      redirect_to wigs_path
      return
    end

    @acquisition = Acquisition.new(acquisition_params)
    @acquisition.user = current_user
    @acquisition.wig = @wig
    if @acquisition.save
      # flash[:notice] = "Votre perruque a bien été réservée !"
      redirect_to confirmation_acquisition_path(@acquisition)
    else
      render :new
    end
  end

  def confirmation
  end

  def edit
    @acquisition = Acquisition.find(params[:id])
  end

  def update
    @acquisition = Acquisition.find(params[:id])

    if @acquisition.update(acquisition_params)
      redirect_to new_wig_acquisition_path(@acquisition.wig)
    else
      render :edit
    end
  end

  private

  def set_wig
    @wig = Wig.find(params[:wig_id])
  end

  def acquisition_params
    params.require(:acquisition).permit(:delivery_name, :delivery_address, :delivery_zipcode, :delivery_city, :date_time, :medical_reasons, :delivery)
  end
end
