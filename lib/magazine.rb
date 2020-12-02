class Magazine < Base
  attr_reader :title, :isbn, :authors, :published_at

  def initialize(title:, isbn:, authors:, published_at:)
    @title = title
    @isbn = isbn
    @authors = authors
    @published_at = published_at
  end

  def summary
    <<EOM
    Title: #{@title}
    Authors: #{@authors}
    ISBN: #{@isbn}
    Published At: #{@published_at}
EOM
  end

  def self.all
    values.map do |row|
      self.new(
          title: row['title'],
          isbn: row['isbn'],
          authors: row['authors'],
          published_at: row['@publishedAt'])
    end
  end

  def self.values
    Parser.new('../data/magazines.csv').parse
  end
end
