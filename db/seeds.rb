# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

jon = User.create(:email => 'jtherr@gmail.com', :password => "stayntouch")
jos = User.create(:email => 'jos@stayntouch.com', :password => "stayntouch")
gop = User.create(:email => 'gopkumar@stayntouch.com', :password => "stayntouch")

hotel1 = Hotel.create(:name => 'The Dupont Circle Hotel', :address => '1500 New Hampshire Ave NW, Washington, DC 20036')
hotel2 = Hotel.create(:name => 'Hotel Palomar Washington DC', :address => '2121 P St NW, Washington, DC 20037')
hotel3 = Hotel.create(:name => 'Hotel Madera', :address => '1310 New Hampshire Ave NW, Washington, DC 20036')
hotel4 = Hotel.create(:name => 'Topaz Hotel', :address => '1733 N St NW, Washington, DC 20036')
hotel5 = Hotel.create(:name => 'The Embassy Inn', :address => '1627 16th St NW, Washington, DC 20009')

Booking.create(:hotel => hotel1, :user => jon, :travel_from_date => DateTime.strptime("09/02/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("09/04/2013", "%m/%d/%Y"), :confirmation_number => '2323463')
Booking.create(:hotel => hotel2, :user => jon, :travel_from_date => DateTime.strptime("09/30/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("10/02/2013", "%m/%d/%Y"), :confirmation_number => '2323464')
Booking.create(:hotel => hotel3, :user => jon, :travel_from_date => DateTime.strptime("10/18/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("10/25/2013", "%m/%d/%Y"), :confirmation_number => '2323465')
Booking.create(:hotel => hotel4, :user => jon, :travel_from_date => DateTime.strptime("02/22/2014", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("03/07/2014", "%m/%d/%Y"), :confirmation_number => '2323466')
Booking.create(:hotel => hotel4, :user => jon, :travel_from_date => DateTime.strptime("12/26/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("12/31/2013", "%m/%d/%Y"), :confirmation_number => '2323467')

Booking.create(:hotel => hotel1, :user => jos, :travel_from_date => DateTime.strptime("09/01/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("09/08/2013", "%m/%d/%Y"), :confirmation_number => '2323468')
Booking.create(:hotel => hotel2, :user => jos, :travel_from_date => DateTime.strptime("09/29/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("10/05/2013", "%m/%d/%Y"), :confirmation_number => '2323469')
Booking.create(:hotel => hotel2, :user => jos, :travel_from_date => DateTime.strptime("10/16/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("10/29/2013", "%m/%d/%Y"), :confirmation_number => '2323470')
Booking.create(:hotel => hotel4, :user => jos, :travel_from_date => DateTime.strptime("02/21/2014", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("03/01/2014", "%m/%d/%Y"), :confirmation_number => '2323471')
Booking.create(:hotel => hotel5, :user => jos, :travel_from_date => DateTime.strptime("11/06/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("11/10/2013", "%m/%d/%Y"), :confirmation_number => '2323472')

Booking.create(:hotel => hotel1, :user => gop, :travel_from_date => DateTime.strptime("09/06/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("09/06/2013", "%m/%d/%Y"), :confirmation_number => '2323473')
Booking.create(:hotel => hotel1, :user => gop, :travel_from_date => DateTime.strptime("09/30/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("10/06/2013", "%m/%d/%Y"), :confirmation_number => '2323474')
Booking.create(:hotel => hotel2, :user => gop, :travel_from_date => DateTime.strptime("10/01/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("10/02/2013", "%m/%d/%Y"), :confirmation_number => '2323475')
Booking.create(:hotel => hotel3, :user => gop, :travel_from_date => DateTime.strptime("10/19/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("10/20/2013", "%m/%d/%Y"), :confirmation_number => '2323476')
Booking.create(:hotel => hotel4, :user => gop, :travel_from_date => DateTime.strptime("02/17/2014", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("02/18/2014", "%m/%d/%Y"), :confirmation_number => '2323477')
Booking.create(:hotel => hotel5, :user => gop, :travel_from_date => DateTime.strptime("11/02/2013", "%m/%d/%Y"), :travel_to_date => DateTime.strptime("11/29/2013", "%m/%d/%Y"), :confirmation_number => '2323478')
