require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save empty user" do
    user = User.new
    assert !user.save, 'empty user saved'
  end
  
  test "should not save duplicate email" do
    user = User.new
    user.email = 'test@email.com'
    assert !user.save, 'duplicate email saved'
  end
  
  test "should save valid user" do
    user = User.new
    user.email = 'valid@email.com'
    user.password = 'valid1234'
    assert user.save, 'valid user not saved'
  end
end
