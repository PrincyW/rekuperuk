class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about_us, :splash]

  def splash
  end

  def home
  end

  def about_us
  end
end
