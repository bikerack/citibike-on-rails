class Trip < ActiveRecord::Base
  belongs_to :origin
  belongs_to :destination

  def start_time(seconds = 60)
    @time = self.origin.created_at
    Time.at((@time.to_f / seconds).round * seconds)
  end

end



