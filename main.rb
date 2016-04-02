require_relative "config/environment.rb"
require_relative "lib/library.rb"
require_relative "lib/employee.rb"
require_relative "lib/book.rb"
require_relative "lib/patron.rb"
require "active_record"
require "pry"
require "yaml"

####################################
# Main Menu
def main_menu
  choice = ""

  while choice != "exit"
    puts "\nWelcome to Eratos"
    puts "\nMain Menu Options:"
    puts "Type L to see the Library Menu"
    puts "Type B to see the Book Menu"
    puts "Type E to see the Employee Menu"
    puts "Type P to see the Patron Menu"
    puts "Exit: Exit"
    print "\nWhat is your choice? "
    choice = gets.chomp.downcase

    while choice != "l" && choice != "b" && choice != "e" &&
       choice != "p" && choice != "exit"
       print "Sorry, that's an invalid choice."
       print "Please try again: "
      choice = gets.chomp.downcase
    end

    if choice == "l"
      puts "Heading to the Library menu"
      puts "= = = = = = = = = = = = = ="
      library_menu # method call
      puts "= = = = = = = = = = = = = ="
    elsif choice == "b"
      puts "Heading to the Book menu"
      puts "= = = = = = = = = = = = = ="
      book_menu # method call
      puts "= = = = = = = = = = = = = ="
    elsif choice == "e"
      puts "Heading to the Employee menu"
      puts "= = = = = = = = = = = = = ="
      employee_menu # method call
    elsif choice == "p"
      puts "Heading to the Patron menu"
      puts "= = = = = = = = = = = = = ="
      patron_menu # method call
    elsif choice == "exit"
      puts "You chose to leave - goodbye!"
      puts "= = = = = = = = = = = = = ="
    end
  end
end

####################################
####################################
# Library Menu 1.1
def library_menu
  choice = ""

  while choice != "9"
    puts "\nLibrary Main Menu"
    puts "Type L for a List of Libraries"
    puts "Type E for a List of Employees"
    puts "Type B for a List of Books"
    puts "9. will return you back to the main menu"
    print "What is your choice? "
    choice = gets.chomp.downcase

    while choice != "l" && choice != "e" && choice != "b" && choice != "9"
      print "Sorry, that's an invalid choice."
      print "Please try again: "
    choice = gets.chomp.downcase
    end

    if choice == "l"
      puts "\nHere is a list of all Libraries"
      # library_list method
    elsif choice == "e"
      puts "\nHere is a list of all Employees"
      # employee_list method
    elsif choice == "b"
      puts "\nHere is a list of all Books"
      # book_list method
    elsif choice == "9"
      puts "\nSee ya!"
    end
  end
  puts "Going back to the main menu"
end
####################################
# -----sub menu     library_list
def library_list

end

####################################
# Book Menu 1.2
def book_menu
  choice = ""

  while choice != "9"
    puts "\nBook Main Menu"
    puts "Type L for a List of Libraries"
    puts "Type E for a List of Employees"
    puts "Type B for a List of Books"
    puts "9. will return you back to the main menu"
    print "What is your choice? "
    choice = gets.chomp.downcase

    while choice != "l" && choice != "e" && choice != "b" && choice != "9"
      print "Sorry, that's an invalid choice."
      print "Please try again: "
    choice = gets.chomp.downcase
    end

    if choice == "l"
      puts "\nHere is a list of all Libraries"
      # library_list method
    elsif choice == "e"
      puts "\nHere is a list of all Employees"
      # employee_list method
    elsif choice == "b"
      puts "\nHere is a list of all Books"
      # book_list method
    elsif choice == "9"
      puts "\nSee ya!"
    end
  end
  puts "Going back to the main menu"
end

####################################
# Employee Menu 1.3
def employee_menu
  choice = ""

  while choice != "9"
    puts "\nBook Main Menu"
    puts "Type L for a List of Libraries"
    puts "Type E for a List of Employees"
    puts "Type B for a List of Books"
    puts "9. will return you back to the main menu"
    print "What is your choice? "
    choice = gets.chomp.downcase

    while choice != "l" && choice != "e" && choice != "b" && choice != "9"
      print "Sorry, that's an invalid choice."
      print "Please try again: "
    choice = gets.chomp.downcase
    end

    if choice == "l"
      puts "\nHere is a list of all Libraries"
      # library_list method
    elsif choice == "e"
      puts "\nHere is a list of all Employees"
      # employee_list method
    elsif choice == "b"
      puts "\nHere is a list of all Books"
      # book_list method
    elsif choice == "9"
      puts "\nSee ya!"
    end
  end
  puts "Going back to the main menu"
end
####################################
# Patron Menu 1.4
def patron_menu
  choice = ""

  while choice != "9"
    puts "\nLibrary Main Menu"
    puts "Type L for a List of Libraries"
    puts "Type E for a List of Employees"
    puts "Type B for a List of Books"
    puts "Type P for a List of Patrons"
    puts "9. will return you back to the main menu"
    print "What is your choice? "
    choice = gets.chomp.downcase

    while choice != "l" && choice != "e" && choice != "b" &&
      choice != "p" && choice != "9"
      print "Sorry, that's an invalid choice."
      print "Please try again: "
    choice = gets.chomp.downcase
    end

    if choice == "l"
      puts "\nHere is a list of all Libraries"
      # library_list method
    elsif choice == "e"
      puts "\nHere is a list of all Employees"
      # employee_list method
    elsif choice == "b"
      puts "\nHere is a list of all Books"
      # book_list method
    elsif choice == "p"
      puts "\nHere is a list of all Patrons"
      # book_list method
    elsif choice == "9"
      puts "\nSee ya!"
    end
  end
  puts "Going back to the main menu"
end

####################################
# this is where our driver actually starts

puts "\nDriver Demo! Not for Public Use"
main_menu
puts "Goodbye"

####################################


binding.pry
