require "test_helper"
require_relative "../lib/book.rb"

class BookTest < Minitest::Test

  def test_should_be_creatable_under_normal_circumstances
    book = Book.new(title: "Soccer Anatomy", author: "Donald T. Kirkendall", isbn: "978-0-7360-9569-3")
    refute_nil(book)
  end

  def test_has_a_title
    book = Book.new(title: "Soccer Anatomy", author: "Donald T. Kirkendall", isbn: "978-0-7360-9569-3")
    book.title = "Cause of Death"
    assert_equal("Cause of Death", book.title)
  end

  def test_has_an_author
    book = Book.new(title: "Soccer Anatomy", author: "Donald T. Kirkendall", isbn: "978-0-7360-9569-3")
    book.author = "Keith D. Wilson, M.D."
    assert_equal("Keith D. Wilson, M.D.", book.author)
  end

  def test_has_an_isbn
    book = Book.new(title: "Soccer Anatomy", author: "Donald T. Kirkendall", isbn: "978-0-7360-9569-3")
    book.isbn = "0-89879-524-9"
    assert_equal("0-89879-524-9", book.isbn)
  end

  def test_validator_should_fail_book_with_no_title
    i = Book.new(title: "Soccer Anatomy", author: "Donald T. Kirkendall", isbn: "978-0-7360-9569-3")
    assert(i.valid?, "should be valid at creation")

    i.title = nil
    refute(i.valid?, "should be invalid without a title")

    i.title = ""
    refute(i.valid?, "should be invalid with an empty title")
  end

  def test_validator_should_fail_book_with_no_author
    i = Book.new(title: "Soccer Anatomy", author: "Donald T. Kirkendall", isbn: "978-0-7360-9569-3")
    assert(i.valid?, "should be valid at creation")

    i.author = nil
    refute(i.valid?, "should be invalid without an author")

    i.author = ""
    refute(i.valid?, "should be invalid with an empty author")
  end

  def test_validator_should_fail_library_with_no_isbn
    i = Book.new(title: "Soccer Anatomy", author: "Donald T. Kirkendall", isbn: "978-0-7360-9569-3")
    assert(i.valid?, "should be valid at creation")

    i.isbn = nil
    refute(i.valid?, "should be invalid without an ISBN")

    i.isbn = ""
    refute(i.valid?, "should be invalid with an empty ISBN")
  end

end
