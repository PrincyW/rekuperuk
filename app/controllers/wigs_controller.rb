class WigsController < ApplicationController

  before_action :set_wig, only: [:show, :recap]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @wigs = Wig.includes(:acquisitions).all.select do |wig|
      wig.acquisitions.empty?
    end

    filter_params.each do |filter, value|
      @wigs = @wigs.select { |wig| wig_matches_filter?(wig, filter, value) }
    end
  end

  def show
    redirect_to wigs_path, alert: "Cette perruque n'est pas disponible." if @wig.acquisitions.exists?
  end

  # Temporary route for page where customer can see the recap of their order
  def recap
    if current_user.acquisitions.exists?
      flash[:alert] = "Vous avez déjà réservé une perruque."
      redirect_to wigs_path
    end
    redirect_to wigs_path, alert: "Cette perruque n'est pas disponible." if @wig.acquisitions.exists?
  end

  private

  def set_wig
    @wig = Wig.find(params[:id])
  end

  def filter_params
    params.permit(:color, :texture, :size, :length)
  end

  def wig_matches_filter?(wig, filter, value)
    case filter
    when 'color'
      wig.color.name == value
    when 'texture'
      wig.texture.name == value
    when 'size'
      wig.size.name == value
    when 'length'
      wig.length.name == value
    else
      true
    end
  end
end
