
class LibraryBooks

attr_reader :books      #passed

  def initialize(books) #passed
    @books = books
  end

  # def book_info(books) # not passed
  #   book_info_collect = []
  #     for titles in books
  #       book_info_collect.push(titles)
  #     end
  # end

  def rent_details(books) #passed
    details_collect = []
      for rentals in books[:rental_details]
        details_collect.push(rentals)
      end
   end
end
