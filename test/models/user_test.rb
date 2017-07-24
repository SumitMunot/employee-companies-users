require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without name" do
    user = User.new
    assert_not user.save, "Not saved the user without a name"
  end

  test "should save user with name" do
    user = User.new
    user.name = "test"
    assert user.save, "Saved the user"
  end

  test "should save user with name" do
    user = User.new
    user.name = "employee"
    assert user.save, "User name must not be employee"
  end
end
