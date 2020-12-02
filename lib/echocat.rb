# frozen_string_literal: true

require_relative 'parser'
require_relative 'base'
require_relative 'author'
require_relative 'magazine'
require_relative 'book'

module Echocat
  def self.run
    puts "All Magazines"
    Magazine.print
    puts "All Books"
    Book.print
    puts Book.find_by_isbn("Schlank im Schlaf")
  end
end
