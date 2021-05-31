class HotelBookingsController < ApplicationController
  before_action :set_hotel_booking, only: %i[ show edit update destroy ]

  # GET /hotel_bookings or /hotel_bookings.json
  def index
    @hotel_bookings = HotelBooking.all
  end

  # GET /hotel_bookings/1 or /hotel_bookings/1.json
  def show
  end

  # GET /hotel_bookings/new
  def new
    @hotel_booking = HotelBooking.new
  end

  # GET /hotel_bookings/1/edit
  def edit
  end

  # POST /hotel_bookings or /hotel_bookings.json
  def create
    @hotel_booking = HotelBooking.new(hotel_booking_params)

    respond_to do |format|
      if @hotel_booking.save
        format.html { redirect_to @hotel_booking, notice: "Hotel booking was successfully created." }
        format.json { render :show, status: :created, location: @hotel_booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hotel_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotel_bookings/1 or /hotel_bookings/1.json
  def update
    respond_to do |format|
      if @hotel_booking.update(hotel_booking_params)
        format.html { redirect_to @hotel_booking, notice: "Hotel booking was successfully updated." }
        format.json { render :show, status: :ok, location: @hotel_booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hotel_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotel_bookings/1 or /hotel_bookings/1.json
  def destroy
    @hotel_booking.destroy
    respond_to do |format|
      format.html { redirect_to hotel_bookings_url, notice: "Hotel booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel_booking
      @hotel_booking = HotelBooking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hotel_booking_params
      params.require(:hotel_booking).permit(:name, :address, :phoneno)
    end
end
