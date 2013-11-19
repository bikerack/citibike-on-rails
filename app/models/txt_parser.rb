class TxtParser < ActionController::Base
  attr_writer :files
  attr_reader :path

  def self.parse
    new.call
  end
  
  def initialize(path = "/Users/johnrichardson/Development/data/feed")
    @path = path
  end

  def build_row(date_string)
    DateLookup.new.tap do |d| 
      d.history = date_string
      d.save
    end
  end

  def files
    @files ||= Dir.entries(path)[3..-1]
  end

  def call
    files.each do |file_name| 
      build_row(*parse_filename(file_name))
    end
  end

  def parse_filename(file_name)
    DateTime.parse(file_name.gsub("citi_", "").gsub("_",""))
  end

end
