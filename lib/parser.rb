require 'csv'

class Parser
  def initialize(filename)
    @csv = CSV.new(File.read(File.join(__dir__,filename)), headers: true, col_sep: ";")
  end

  def parse
    @csv.map {|row| row.to_hash }
  end
end

