class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about_us, :splash, :faq]

  def splash
  end

  def home
  end

  def about_us
  end

  def faq
  end
end
