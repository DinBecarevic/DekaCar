# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    @oglasi = Ad.all
    @oglasi_desc = Ad.order("created_at DESC")
  end

  def oglasi

    @oglasi = Ad.all
    @oglasi_desc = Ad.order("created_at DESC")
    if params[:car_search].present?
      car_search_params = params.require(:car_search).permit(:car_make_id, :car_model_id, :body_type_id, :fuel_type_id, :city_id)
      if car_search_params[:car_make_id].present?
        @oglasi_desc = @oglasi_desc.where(car_make_id: car_search_params[:car_make_id])
      end
      if car_search_params[:car_model_id].present?
        @oglasi_desc = @oglasi_desc.where(car_model_id: car_search_params[:car_model_id])
      end
      if car_search_params[:body_type_id].present?
        @oglasi_desc = @oglasi_desc.where(body_type_id: car_search_params[:body_type_id])
      end
      if car_search_params[:fuel_type_id].present?
        @oglasi_desc = @oglasi_desc.where(fuel_type_id: car_search_params[:fuel_type_id])
      end
      if car_search_params[:city_id].present?
        @oglasi_desc = @oglasi_desc.where(city_id: car_search_params[:city_id])
      end
    end

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

