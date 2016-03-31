require "test_helper"
require_relative "../lib/library.rb"

class LibraryTest < Minitest::Test

  def test_should_be_creatable_under_normal_circumstances
    library = Library.new(name: "Bennet Martin", address: "14th and O Street", phone: "312-999-6565")
    refute_nil(library)
  end

  def test_has_a_name
    library = Library.new(name: "Bennet Martin", address: "14th and O Street", phone: "312-999-6565")
    library.name = "Arnold Heights"
    assert_equal("Arnold Heights", library.name)
  end

  def test_has_an_address
    library = Library.new(name: "Bennet Martin", address: "14th and O Street", phone: "312-999-6565")
    library.address = "5401 Knight Street"
    assert_equal("5401 Knight Street", library.address)
  end

  def test_has_a_phone
    library = Library.new(name: "Bennet Martin", address: "14th and O Street", phone: "312-999-6565")
    library.phone = "402-470-1009"
    assert_equal("402-470-1009", library.phone)
  end

  def test_validator_should_fail_library_with_no_name
    i = Library.create(name: "Bennet Martin", address: "14th and O Street", phone: "312-999-6565")
    assert(i.valid?, "should be valid at creation")

    i.name = nil
    refute(i.valid?, "should be invalid without a name")

    i.name = ""
    refute(i.valid?, "should be invalid with an empty name")
  end

  def test_validator_should_fail_library_with_no_address
    i = Library.create(name: "Bennet Martin", address: "14th and O Street", phone: "312-999-6565")
    assert(i.valid?, "should be valid at creation")

    i.address = nil
    refute(i.valid?, "should be invalid without a name")

    i.address = ""
    refute(i.valid?, "should be invalid with an empty name")
  end

  def test_validator_should_fail_library_with_no_phone
    i = Library.create(name: "Bennet Martin", address: "14th and O Street", phone: "312-999-6565")
    assert(i.valid?, "should be valid at creation")

    i.phone = nil
    refute(i.valid?, "should be invalid without a name")

    i.phone = ""
    refute(i.valid?, "should be invalid with an empty name")
  end

end
