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
    @property = Property.find(params[:id])
  end

  def edit
    @property = Property.find(params[:id])
  end

  private

  def property_params
    params.require(:property).permit(
      :name,
      :cost,
      :address,
      :age,
      :note,
      nearest_stations_attributes: [:line, :station, :minute_walk]
  )
  end
end
