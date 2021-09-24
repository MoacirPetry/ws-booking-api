class Api::V1::SchedulerController < ApplicationController
  def week
    week = params[:week].to_datetime
    @bookings = Booking.where(start_at: week.beginning_of_week..week.end_of_week)
    render json: @bookings
  end
end
