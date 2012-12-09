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

require 'spec_helper'

describe Segment do
  
  before { @segment = Segment.new( name: "Segment 1", ini_vertex_id: 1, end_vertex_id: 2, distance: 5, height: 15, time: 50 ) }

  subject { @segment }

  it { should respond_to(:name) }
  it { should respond_to(:subtitle) }
  it { should respond_to(:description) }
  it { should respond_to(:ini_vertex_id) }
  it { should respond_to(:end_vertex_id) }
  it { should respond_to(:distance) }
  it { should respond_to(:height) }
  it { should respond_to(:time) }

  it { should be_valid }

  describe "when name is not present" do
    before { @segment.name = " " }
    it { should_not be_valid }
  end

  describe "when ini_vertex_id is not present" do
    before { @segment.ini_vertex_id = " " }
    it { should_not be_valid }
  end

  describe "when end_vertex_id is not present" do
    before { @segment.end_vertex_id = " " }
    it { should_not be_valid }
  end

  describe "when distance is not present" do
    before { @segment.distance = " " }
    it { should_not be_valid }
  end

  describe "when height is not present" do
    before { @segment.height = " " }
    it { should_not be_valid }
  end

  describe "when time is not present" do
    before { @segment.time = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @segment.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when subtitle is too long" do
    before { @segment.subtitle = "a" * 51 }
    it { should_not be_valid }
  end

 describe "when distance is not numeric" do
    before { @segment.distance = "a" }
    it { should_not be_valid }
  end

  describe "when height is not numeric" do
    before { @segment.height = "a"  }
    it { should_not be_valid }
  end

  describe "when time is not numeric" do
    before { @segment.time = "a" }
    it { should_not be_valid }
  end

  describe "when ini_vertex_id is not numeric" do
    before { @segment.ini_vertex_id = "a" }
    it { should_not be_valid }
  end

  describe "when end_vertex_id is not numeric" do
    before { @segment.end_vertex_id = "a" }
    it { should_not be_valid }
  end

  describe "when name is already used" do
    before do
      segment_with_same_name = @segment.dup
      segment_with_same_name.name = @segment.name.upcase
      segment_with_same_name.save
    end
    it { should_not be_valid }
  end

end
