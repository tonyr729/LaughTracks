class Special < ActiveRecord::Base
  belongs_to :comedian
  validates_presence_of :name, :image_url, :run_time, :comedian_id
end
