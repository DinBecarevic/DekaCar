class CarsController < ApplicationController
  def search
    # Get the search parameters from the form
    make = params[:car_make_id]
    model = params[:car_model_id]
    body_type = params[:body_type_id]
    fuel_type = params[:fuel_type_id]
    city = params[:city_id]

    # Construct a query based on the search parameters
    query = Ad.all
    query = query.where(:car_make_id => make) unless make.blank?
    query = query.where(:car_model_id => model) unless model.blank?
    query = query.where(:body_type_id => body_type) unless body_type.blank?
    query = query.where(:fuel_type_id => fuel_type) unless fuel_type.blank?
    query = query.where(:city_id => city) unless city.blank?

    puts '====================='
    puts query.to_sql

    # Execute the query and save the results in an instance variable
    @cars = query.to_a

    # Redirect to the search results page
    redirect_to cars_search_results_path
  end

  def search_results
    # Get the search results from the instance variable and display them in the view
    puts '................................'
    @cars = instance_variable_get('@cars')
    puts @cars
  end
end
