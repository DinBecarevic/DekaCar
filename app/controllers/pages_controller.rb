# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    @oglasi = Ad.all
    @oglasi_DESC = Ad.order("created_at DESC")
  end

  def oglasi
    @oglasi = Ad.all
    @oglasi_DESC = Ad.order("created_at DESC")
    @stevilo = Ad.count
  end

  def car
    @oglas = Ad.find_by(id: params[:id])

    if @oglas.nil?
      redirect_to oglasi_path, alert: "Ad not found"
    end

    @images = @oglas.ad_photos

    user_id = Ad.find(params[:id]).user_id
    @user_ads_count = Ad.where(user_id: user_id).count
  end


end

