class BookingsController < ApplicationController
    def show_bookings
      @book = Booking.where(user_id: current_user.id)
    end
    
    def insert_booking
      @hotels = Hotel.all
    end
  
    def booking_success
    end

  end
