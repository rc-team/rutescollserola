# == Schema Information
#
# Table name: vertices
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  lat        :float
#  lon        :float
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Vertex < ActiveRecord::Base
  attr_accessible :lat, :lon, :name
  
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :lat,  numericality: true
  validates :lon,  numericality: true
  
end
