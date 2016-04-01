require "test_helper"
require_relative "../lib/patron.rb"

class PatronTest < Minitest::Test

  def test_should_be_creatable_under_normal_circumstances
    patron = Patron.new(name: "Jill Public", email: "JillyJill@aol.com")
    refute_nil(patron)
  end

  def test_has_a_name
    patron = Patron.new(name: "Jill Public", email: "JillyJill@aol.com")
    patron.name = "Leslie Yoo"
    assert_equal("Leslie Yoo", patron.name)
  end

  def test_has_an_email
    patron = Patron.new(name: "Jill Public", email: "JillyJill@aol.com")
    patron.email = "Marco@polo.com"
    assert_equal("Marco@polo.com", patron.email)
  end

  def test_validator_should_fail_patron_with_no_name
    i = Patron.new(name: "Jill Public", email: "JillyJill@aol.com")
    assert(i.valid?, "should be valid at creation")

    i.name = nil
    refute(i.valid?, "should be invalid without a name")

    i.name = ""
    refute(i.valid?, "should be invalid with an empty name")
  end

  def test_validator_should_fail_patron_with_no_email
    i = Patron.new(name: "Jill Public", email: "JillyJill@aol.com")
    assert(i.valid?, "should be valid at creation")

    i.email = nil
    refute(i.valid?, "should be invalid without an email")

    i.email = ""
    refute(i.valid?, "should be invalid with an empty email")
  end

end
