class Vertex < ActiveRecord::Base
  attr_accessible :lat, :lon, :name
  
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  
end
