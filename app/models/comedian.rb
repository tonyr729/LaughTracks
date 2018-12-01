class Comedian < ActiveRecord::Base
  has_many :specials
  validates_presence_of :name, :age, :city

  def self.average_age
    Comedian.average(:age).to_i
  end

  def self.unique_cities
    Comedian.distinct.pluck(:city)
  end
end
