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

  def setting_wig
    @wig = Wig.find(params[:wig_id])
  end
end
