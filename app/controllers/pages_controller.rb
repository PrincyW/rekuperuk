class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def splash
  end

  def home
  end

  def about_us
  end
end
