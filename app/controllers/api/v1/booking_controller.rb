class Api::V1::BookingController < ApplicationController
  before_action :set_booking, only: [:destroy]
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @booking.destroy
      render json: { status: :ok, message: "#{@booking.id} deleted!!" }
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  private
    def set_booking
      @booking = Booking.find(params[:id])
    end
    def booking_params
      params.permit(:start_at, :finish_at, :user_id, :agent_id)
    end
end
