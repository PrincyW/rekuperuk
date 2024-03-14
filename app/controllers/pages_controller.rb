class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about_us, :splash, :faq, :filters]

  def splash
  end

  def home
  end

  def about_us
  end

  def faq
  end

  def filters
  end
end
