class LibraryParser
  attr_writer :files
  attr_reader :path

  def self.parse
    new.call
  end
  
  def initialize(path = "/Users/johnrichardson/Development/data/feed_test")
    @path = path
  end

  def build_row(txtfile_name)
    DateLookup.new.tap do |s| 
      s.name = txtfile_name
    end
  end

  def files
    @files ||= Dir.entries(path)[2..-1]
  end

  def call
    files.each do |file_name| 
      build_row(*parse_filename(file_name))
    end
  end

  def parse_filename(file_name)
    file_name.gsub("citi_", "").gsub("_","")
  end
end
