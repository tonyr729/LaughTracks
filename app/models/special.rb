class Special < ActiveRecord::Base
  belongs_to :comedian
  validates_presence_of :name, :image_url, :run_time, :comedian_id

  def self.average_runtime
    average(:run_time).round(2) if average(:run_time)
  end
end
