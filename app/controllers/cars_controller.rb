class CarsController < ApplicationController
  def index
    params[:query].present? ? @cars = Car.search_by_location(params[:query]) : @cars = Car.all
    @car = Car.new
    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
    end
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
    @marker = [{
      lat: @car.latitude,
      lng: @car.longitude
    }]
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

  def car_params
    params.require(:car).permit(:model, :description, :price, :location, :photo)
  end
end
