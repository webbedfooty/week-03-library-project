require "test_helper"
require_relative "../lib/Library.rb"

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

end
