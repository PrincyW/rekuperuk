class AcquisitionsController < ApplicationController
  before_action :set_wig, only: [:new, :create]

  def new
    @acquisition = Acquisition.new
  end

  def create
    @acquisition = Acquisition.new(acquisition_params)
    @acquisition.user = current_user
    @acquisition.wig = @wig
    if @acquisition.save
      flash[:notice] = "Wig reserved successfully."
      redirect_to wigs_path
    else
      render:new
    end
  end

  private

  def set_wig
    @wig = Wig.find(params[:wig_id])
  end

  def acquisition_params
    params.require(:acquisition).permit(:delivery_name, :delivery_address, :delivery_zipcode, :city, :date_time, :medical_reasons)
  end
end
