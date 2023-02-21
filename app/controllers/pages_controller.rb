# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    # Your code here
  end

  def oglasi
    @oglasi = Ad.all
  end
end

