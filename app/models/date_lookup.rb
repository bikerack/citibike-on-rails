class DateLookup < ActiveRecord::Base

  
    validates :history, uniqueness: true

end