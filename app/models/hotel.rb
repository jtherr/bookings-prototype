class Hotel < ActiveRecord::Base
  has_many :bookings
  validates_presence_of :name
  validates_uniqueness_of :name
end