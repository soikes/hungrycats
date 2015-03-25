require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new( name: "Example User", 
                      email: "user@example.com",
                      password: "welcome",
                      password_confirmation: "welcome")
  end
  
  test "name should not be blank" do
    @user.name = ''
    assert_not @user.valid?
  end
  
  test "email should not be blank" do
    @user.email = ''
    assert_not @user.valid?
  end
  
  test "name should not be too long" do 
    @user.name = "x" * 51
    assert_not @user.valid?
  end
  
  test "email should not be too long" do
    @user.email = "x" * 244 + "@example.com"
    assert_not @user.valid?
  end
  
  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = 'a'*5
    assert_not @user.valid?
  end
  
end
