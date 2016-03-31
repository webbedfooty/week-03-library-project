require "test_helper"
require_relative "../lib/employee.rb"

class EmployeeTest < Minitest::Test

  def test_should_be_creatable_under_normal_circumstances
    employee = Employee.new(name: "J Quincy Adams", email: "jq@library.org")
    refute_nil(employee)
  end

  def test_has_a_name
    employee = Employee.new(name: "J Quincy Adams", email: "jq@library.org")
    employee.name = "Sophie McSophie"
    assert_equal("Sophie McSophie", employee.name)
  end

  def test_has_an_email
    employee = Employee.new(name: "J Quincy Adams", email: "jq@library.org")
    employee.email = "lucky@jammers.gov"
    assert_equal("lucky@jammers.gov", employee.email)
  end

  def test_validator_should_fail_employee_with_no_name
    i = Employee.new(name: "J Quincy Adams", email: "jq@library.org")
    assert(i.valid?, "should be valid at creation")

    i.name = nil
    refute(i.valid?, "should be invalid without a name")

    i.name = ""
    refute(i.valid?, "should be invalid with an empty name")
  end

  def test_validator_should_fail_employee_with_no_email
    i = Employee.new(name: "J Quincy Adams", email: "jq@library.org")
    assert(i.valid?, "should be valid at creation")

    i.email = nil
    refute(i.valid?, "should be invalid without a name")

    i.email = ""
    refute(i.valid?, "should be invalid with an empty name")
  end

end
