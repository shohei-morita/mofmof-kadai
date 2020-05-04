class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    @property.nearest_stations.build
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private

  def property_params
    params.require(:property).permit(:name, :cost, :address, :age, :note,
                                     nearest_station_attributes: %i(line station minute_walk))
  end
end
