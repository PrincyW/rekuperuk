class WigsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_wig, only: [:show]

  def index
    @wigs = Wig.all
  end

  def show
  end

  private

  def set_wig
    @wig = Wig.find(params[:id])
  end
end
