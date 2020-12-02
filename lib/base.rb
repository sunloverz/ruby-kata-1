class Base
  def self.print
    self.all.each_with_index do |value, index|
      puts "Item №#{index}"
      puts value.summary
    end
  end

  def self.find_by_isbn(value)
    all.find {|book| book.isbn == value}
  end

  def self.find_by_author_email(email)

  end
end
