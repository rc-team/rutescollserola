# == Schema Information
#
# Table name: routes
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  subtitle    :string(255)
#  description :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Route < ActiveRecord::Base
  attr_accessible :description, :name, :subtitle

  validates :name,        presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :subtitle,    presence: true, length: { maximum: 50 }

end
