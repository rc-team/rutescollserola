# == Schema Information
#
# Table name: instructions
#
#  id         :integer         not null, primary key
#  text       :text
#  point      :integer
#  lat        :float
#  lon        :float
#  segment_id :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Instruction < ActiveRecord::Base
  attr_accessible :lat, :lon, :point, :text

  belongs_to :segment

  validates :text,   presence: true
  validates :point,  numericality: true
  validates :lat,    numericality: true
  validates :lon,    numericality: true
end
