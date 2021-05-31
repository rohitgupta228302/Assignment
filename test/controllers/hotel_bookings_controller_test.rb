require "test_helper"

class HotelBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hotel_booking = hotel_bookings(:one)
  end

  test "should get index" do
    get hotel_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_hotel_booking_url
    assert_response :success
  end

  test "should create hotel_booking" do
    assert_difference('HotelBooking.count') do
      post hotel_bookings_url, params: { hotel_booking: { address: @hotel_booking.address, name: @hotel_booking.name, phoneno: @hotel_booking.phoneno } }
    end

    assert_redirected_to hotel_booking_url(HotelBooking.last)
  end

  test "should show hotel_booking" do
    get hotel_booking_url(@hotel_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_hotel_booking_url(@hotel_booking)
    assert_response :success
  end

  test "should update hotel_booking" do
    patch hotel_booking_url(@hotel_booking), params: { hotel_booking: { address: @hotel_booking.address, name: @hotel_booking.name, phoneno: @hotel_booking.phoneno } }
    assert_redirected_to hotel_booking_url(@hotel_booking)
  end

  test "should destroy hotel_booking" do
    assert_difference('HotelBooking.count', -1) do
      delete hotel_booking_url(@hotel_booking)
    end

    assert_redirected_to hotel_bookings_url
  end
end
