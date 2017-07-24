require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  test "should not save company without name" do
    company = Company.new
    assert_not company.save, "Not saved the company without a name"
  end

  test "should save company with name" do
    company = Company.new
    company.name = "test"
    assert company.save, "Saved the company"
  end
end
