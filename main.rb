require_relative "config/environment.rb"
require_relative "lib/library.rb"
require_relative "lib/employee.rb"
require_relative "lib/book.rb"
require_relative "lib/patron.rb"
require "active_record"
require "pry"
require "yaml"

####################################
# Library Menu
def library_menu
  choice = ""

  while choice != "back"
    puts "\nLibrary Main Menu"
    puts "1. List of Libraries"
    puts "2. List of Employees"
    puts "3. List of Books"
    puts "4. will return you back to the main menu"
    print "What is your choice? "
    choice = gets.chomp

    while choice != "1" && choice != "2" && choice != "3" && choice != "4"
      print "Sorry, that's an invalid choice."
      print "Please try again: "
      choice = gets.chomp
    end

    if choice == "1"
      puts "\nHere is a list of all Libraries"
      # library_list method
    elsif choice == "2"
      puts "\nHere is a list of all Employees"
      # employee_list method
    elsif choice == "3"
      puts "\nHere is a list of all Books"
      # book_list method
    elsif choice == "4"
      puts "\nSee ya!"
    end
  end
  puts "Going back to the main menu"
end

def main_menu
  choice = ""

  while choice != "exit"
    puts "\nWelcome to Eratos"
    puts "\nMain Menu Options:"
    puts "1. Library Menu"
    puts "2. Book Menu"
    puts "3. Employee Menu"
    puts "4. Patron Menu"
    puts "Exit: Exit"
    print "\nWhat is your choice? "
    choice = gets.chomp.downcase

    while choice != "1" && choice != "2" && choice != "3" &&
       choice != "4" && choice != "exit"
       print "Sorry, that's an invalid choice."
       print "Please try again: "
      choice = gets.chomp.downcase
    end

    if choice == "1"
      puts "= = = = = = = = = = = = = ="
      library_menu # method call
      puts "= = = = = = = = = = = = = ="
    elsif choice == "2"
      puts "Heading to the Book menu"
      puts "= = = = = = = = = = = = = ="
      puts "Which isn't real - goodbye!"
      #book_menu
    elsif choice == "3"
      puts "Heading to the Employee menu"
      puts "= = = = = = = = = = = = = ="
      puts "Which isn't real - goodbye!"
      #employee_menu
    elsif choice == "4"
      puts "Heading to the researchers menu"
      puts "= = = = = = = = = = = = = ="
      puts "Which isn't real - goodbye!"
      #patron_menu
    elsif choice == "exit"
      puts "You chose to leave - goodbye!"
      puts "= = = = = = = = = = = = = ="
    end
  end
end

# this is where our driver actually starts

puts "\nDriver Demo! Not for Public Use"
main_menu
puts "Goodbye"

####################################
# Book Menu



binding.pry
