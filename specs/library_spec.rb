require('minitest/autorun')
require('minitest/rg')
require_relative ('../library')

class TestLibraryBooks < Minitest::Test
#Create a class for a Library that has an array of books.
#Each book should be a hash with a title, which is a
#string, and rental details, which is another hash with a
#student name and due date.

def setup #data for minitest
  @books = [                      #array of books
    {
       title: "lord_of_the_rings", #hash of book titles
       rental_details: {         #hash of rental details
         student_name: "Jeff",
         due_date: "01/12/16"
         }
      },

    {
        title: "bunty",
        rental_details: {
          student_name: "Sue",
          due_date: "12/12/16"
       }
    }
  ]
  end

#complete
#testing the class is defined and initialized
#with the instance variable @books
  def test_class_library
    books = LibraryBooks.new(@books)
  end

#complete Create a getter for the books
  def test_get_book
    lib_book = LibraryBooks.new(@books)
    # expected book title is LOTR, Book titles are in book array index 1, title hash
    assert_equal("lord_of_the_rings",lib_book.books[0][:title])
  end


# #Create a method that takes in a book title and
# #returns all of the information about that book.
#my note: want the info of the lib_book title at index 0
#NOT passed
  # def test_book_info
  #   lib_book = LibraryBooks.new(@books)
  #   result = lib_book.book_info(@books[0])
  #   assert_equal("lord_of_the_rings", result)
  # end

#Create a method that takes in a book title and returns only
#the rental details for that book.

#complete 
  def test_rent_details
    lib_book = LibraryBooks.new(@books)
    result = lib_book.rent_details(@books[0])
    assert_equal({student_name: "Jeff", due_date: "01/12/16"}, result)
  end
end
