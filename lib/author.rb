class Author
  attr_reader :email, :firstname, :lastname

  def initialize(email:, firstname:, lastname:)
    @email = email
    @firstname = firstname
    @lastname = lastname
  end

  def self.all
    values.map do |row|
      self.new(email: row['email'], firstname: row['firstname'], lastname: row['lastname'])
    end
  end

  def self.values
    Parser.new('../data/authors.csv').parse
  end
end
