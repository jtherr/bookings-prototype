require 'test_helper'

class HotelTest < ActiveSupport::TestCase
  test "should not save empty hotel" do
    hotel = Hotel.new
    assert !hotel.save, 'empty hotel saved'
  end
  
  test "should not save duplicate hotel" do
    hotel1 = Hotel.new
    hotel1.name = 'hotel1'
    hotel1.address = '123 Main St'
    assert hotel1.save, 'valid hotel not saved'
    
    hotel1dup = Hotel.new
    hotel1dup.name = 'hotel1'
    hotel1dup.address = '456 Dup St'
    assert !hotel1dup.save, 'duplicate hotel saved'
  end
end
