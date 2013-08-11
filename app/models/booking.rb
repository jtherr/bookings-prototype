class Booking < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :user
  
  validates_presence_of :hotel, :user, :travel_from_date, :travel_to_date, :confirmation_number
  validates_uniqueness_of :confirmation_number
  
  default_scope { order('travel_from_date ASC') }
end
