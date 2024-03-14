class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :home, :about_us, :splash, :faq, :conseils, :filters]

  def splash
  end

  def home
  end

  def about_us
  end

  def faq
  end

  def conseils
  end

  def filters
  end
end
