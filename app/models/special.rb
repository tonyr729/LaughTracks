class Special < ActiveRecord::Base

  validates_presence_of :name, :image_url, :run_time, :comedian_id

end
