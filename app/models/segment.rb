# == Schema Information
#
# Table name: segments
#
#  id            :integer         not null, primary key
#  name          :string(255)
#  subtitle      :string(255)
#  description   :string(255)
#  ini_vertex_id :integer
#  end_vertex_id :integer
#  distance      :integer
#  height        :integer
#  time          :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Segment < ActiveRecord::Base
  attr_accessible :name, :subtitle, :description, :distance, :height, :time, 
    :ini_vertex_id, :end_vertex_id

  belongs_to :end_vertex, :foreign_key => 'end_vertex_id', :class_name => 'Vertex'
  belongs_to :ini_vertex, foreign_key: 'ini_vertex_id', class_name: 'Vertex'

  validates :name,        presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :subtitle,    length: { maximum: 50 }
  validates :distance,    numericality: true
  validates :height,      numericality: true
  validates :time,        numericality: true

  validates :ini_vertex_id, numericality: true
  validates :end_vertex_id, numericality: true
end
