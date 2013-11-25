namespace :data do
  desc "Add historical station data to database"
  task :station => :environment do
    StationParse.parse
  end

  desc "Add current station data to database"
  task :json => :environment do
    # StationParse.parse
  end



  # desc "Pick a random product as the prize"
  # task :prize => :environment do
  #   puts "Prize: #{pick(Product).name}"
  # end
  
  # desc "Pick a random prize and winner"
  # task :all => [:prize, :winner]
  
  # def pick(model_class)
  #   model_class.find(:first, :order => 'RAND()')
  # end

end