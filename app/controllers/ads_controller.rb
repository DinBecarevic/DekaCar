class AdsController < ApplicationController
  before_action :authenticate_user!

  def new
    @oglas = Ad.new
  end

  def index
    @oglasi = Ad.all
  end

  def mojiOglasi
    @mojiOglasi = current_user.Ad
  end

  def show
    @oglas = Ad.find(params[:id])
    @images = @oglas.ad_photos
  end

  # def create
  #   @ad = current_user.Ad.build(ad_params)
  #   if @ad.save
  #     redirect_to root_path, notice: "Ad created successfully"
  #   else
  #     render :new, notice: "Ad not created"
  #   end
  # end

  def create
    @oglas = Ad.new(ad_params)
    @oglas.user = current_user

    respond_to do |format|
      if @oglas.save
        format.html { redirect_to root_path(@oglas), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @oglas }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oglas.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @oglas = Ad.find(params[:id])
  end

  def update
    @oglas = Ad.find(params[:id])
    if @oglas.update(ad_params)
      redirect_to ads_mojiOglasi_path, notice: "Ad updated successfully"
    else
      render :edit, notice: "Ad not updated"
    end
  end

  def destroy
    @oglas = Ad.find(params[:id])
    @oglas.destroy
    redirect_to ads_mojiOglasi_path, notice: "Ad deleted successfully"
  end

  private
  # Only allow a list of trusted parameters through.
  def ad_params
    params.require(:ad).permit(:title, :description, :car_make_id, :car_model_id, :mileage, :vin, :kw, :horsepower, :ccm, :consumption, :color, :year, :price, :condition_id, :fuel_type_id, :body_type_id, :transmission_type_id, :first_name, :last_name, :email, :country_id, :city_id, :address, :phone_number, :website, images: [])
  end
end
