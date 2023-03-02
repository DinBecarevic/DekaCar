class AdsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :mojiOglasi]
  before_action :set_default_description, only: [:create]

  def new
    @oglas = Ad.new
  end

  def index
    @oglasi = Ad.all
  end

  def mojiOglasi
    @mojiOglasi = current_user.Ad.order("created_at DESC")
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
        format.html { redirect_to ads_mojiOglasi_path(@oglas), notice: "Post was successfully created." }
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

  def fetch_make_models_new
    @models = CarModel.where(car_make_id: params[:id])
  end
  def fetch_make_models
    @models = CarModel.where(car_make_id: params[:id])
  end

  private
  # Only allow a list of trusted parameters through.
  #def ad_params
  #  params.require(:ad).permit(:title, :description, :car_make_id, :car_model_id, :mileage, :vin, :kw, :horsepower, :ccm, :consumption,
  #                             :color, :year, :price, :condition_id, :fuel_type_id, :body_type_id, :transmission_type_id, :first_name,
  #                             :last_name, :email, :country_id, :city_id, :address, :phone_number, :website, images: [])
  #end

  #def ad_params
    #params.require(:ad).permit(:title, :car_make_id, :car_model_id, :year, :price, :condition_id, :fuel_type_id, :body_type_id,
    #                           :transmission_type_id, :first_name, :last_name, :email, :city_id, :phone_number, images: [],
    #                           :consumption => 0, :description => "Ni opisa.", :mileage => 0, :vin => "/", :kw => 0, :horsepower => 0, :ccm => 0, :color => "/", :country_id => 1, :address => "/", :website => "/")
  #end

  def ad_params
    #print to console paramater description
    puts "Description 2: "
    puts params[:ad][:description]

    params.require(:ad).permit(:title, :condition_id, :year, :price, :car_make_id, :car_model_id, :body_type_id, :transmission_type_id, :fuel_type_id, :city_id, :first_name, :last_name, :email, :phone_number, :description, :mileage, :vin, :kw, :horsepower, :ccm, :consumption, :color, :country_id, :address, :website, images: [])
  end

  def set_default_description
    puts "Parameters 1: "
    puts params
    #check if param description is empty, if it is, set it to "Ni opisa"
    params[:ad][:description] = "Ni opisa" if params[:ad][:description].blank?
    params[:ad][:mileage] = "0" if params[:ad][:mileage].blank?
    params[:ad][:vin] = "/" if params[:ad][:vin].blank?
    params[:ad][:kw] = "0" if params[:ad][:kw].blank?
    params[:ad][:horsepower] = "0" if params[:ad][:horsepower].blank?
    params[:ad][:ccm] = "0" if params[:ad][:ccm].blank?
    params[:ad][:consumption] = "0" if params[:ad][:consumption].blank?
    params[:ad][:color] = "/" if params[:ad][:color].blank?
    params[:ad][:country_id] = "1" if params[:ad][:country_id].blank?
    params[:ad][:address] = "/" if params[:ad][:address].blank?
    params[:ad][:website] = "/" if params[:ad][:website].blank?
    puts "Parameters 2: "
    puts params

  end




end
