class BookingsController < ApplicationController
  before_action :find_car, only: %i[new create]

  def index
    @bookings = Booking.where(user_id: current_user).to_a
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car
    if @booking.save
      redirect_to car_bookings_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:details, :car_id, :rental_start, :rental_end)
  end

  def find_car
    @car = Car.find(params[:car_id])
  end
end
