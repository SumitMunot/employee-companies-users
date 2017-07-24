require 'test_helper'

class EmploymentTest < ActiveSupport::TestCase
  test "should not save employment without user and company" do
    employments = Employments.new
    employments.user_id = nil
    employments.company_id = nil
    employments.manager = true
    employments.staff = false
    assert_not employments.save, "Not saved the employments without user and company"
  end

  test "should not save employment without manager and staff" do
    employments = Employments.new
    employments.user_id = 1
    employments.company_id = 2
    employments.manager = nil
    employments.staff = nil
    assert_not employments.save, "Not saved the employments without manager and staff"
  end

  test "should save employments with user and company" do
	employments = Employments.new
    employments.user_id = 1
    employments.company_id = 2
    employments.manager = true
    employments.staff = false
    assert employments.save, "Saved the employments"
  end
end
