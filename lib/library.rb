# Library.rb

# + branch name [present] [unique]
# + address [p] [u]
# + phone number [p] [u]

class Library < ActiveRecord::Base

  def test_validator_should_fail_library_with_no_name
    i = Library.create(name: "Bennet Martin", address: "14th and O Street", phone: "312-999-6565")
    assert(i.my_valid?, "should be valid at creation")

    i.name = nil
    refute(i.my_valid?, "should be invalid without a name")

    i.name = ""
    refute(i.my_valid?, "should be invalid with an empty name")
  end

  def test_validator_should_fail_library_with_no_address
    i = Library.create(name: "Bennet Martin", address: "14th and O Street", phone: "312-999-6565")
    assert(i.my_valid?, "should be valid at creation")

    i.address = nil
    refute(i.my_valid?, "should be invalid without a name")

    i.address = ""
    refute(i.my_valid?, "should be invalid with an empty name")
  end

  def test_validator_should_fail_library_with_no_phone
    i = Library.create(name: "Bennet Martin", address: "14th and O Street", phone: "312-999-6565")
    assert(i.my_valid?, "should be valid at creation")

    i.phone = nil
    refute(i.my_valid?, "should be invalid without a name")

    i.phone = ""
    refute(i.my_valid?, "should be invalid with an empty name")
  end

end
