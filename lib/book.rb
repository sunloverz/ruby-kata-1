class Book < Base
  attr_reader :title, :isbn, :authors, :description

  def initialize(title:, isbn:, authors:, description:)
    @title = title
    @isbn = isbn
    @authors = authors
    @description = description
  end

  def summary
    <<EOM
    Title: #{@title}
    Authors: #{@authors}
    ISBN: #{@isbn}
    Description: #{@description}
EOM
  end

  def self.all
    values.map do |row|
      self.new(
          title: row['title'],
          isbn: row['isbn'],
          authors: row['authors'],
          description: row['description'])
    end
  end

  def self.values
    Parser.new('../data/books.csv').parse
  end
end
