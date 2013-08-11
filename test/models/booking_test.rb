require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  test "should not save empty booking" do
    booking = Booking.new
    assert !booking.save, 'empty booking saved'
  end
  
  test "should not save duplicate booking" do
    booking1 = Booking.new
    booking1.confirmation_number = '68343486'
    booking1.travel_from_date = DateTime.strptime("09/02/2013", "%m/%d/%Y")
    booking1.travel_to_date = DateTime.strptime("09/03/2013", "%m/%d/%Y")
    booking1.hotel = hotels(:one)
    booking1.user = users(:one)
    assert booking1.save, 'valid booking not saved'
    
    booking1dup = Booking.new
    booking1dup.confirmation_number = '68343486'
    booking1.travel_from_date = DateTime.strptime("05/02/2013", "%m/%d/%Y")
    booking1.travel_to_date = DateTime.strptime("06/03/2013", "%m/%d/%Y")
    booking1.hotel = hotels(:one)
    booking1.user = users(:one)
    assert !booking1dup.save, 'duplicate booking saved'
  end
end
