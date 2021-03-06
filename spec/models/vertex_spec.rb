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


require 'spec_helper'

describe Vertex do

  before { @vertex = Vertex.new( name: "Vertex 1", lat: 41.44, lon: 2.1 ) }

  subject { @vertex }

  it { should respond_to(:name) }
  it { should respond_to(:lat) }
  it { should respond_to(:lon) }

  it { should be_valid }

  describe "when name is not present" do
    before { @vertex.name = " " }
    it { should_not be_valid}
  end

  describe "when lat is not present" do
    before { @vertex.lat = " " }
    it { should_not be_valid}
  end

  describe "when lon is not present" do
    before { @vertex.lon = " " }
    it { should_not be_valid}
  end

  describe "when name is too long" do
    before { @vertex.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when lat is not numeric" do
    before { @vertex.lat = "a" }
    it { should_not be_valid }
  end

  describe "when lon is not numeric" do
    before { @vertex.lon = "a" }
    it { should_not be_valid }
  end

  describe "when name is already used" do
    before do
      vertex_with_same_name = @vertex.dup
      vertex_with_same_name.name = @vertex.name.upcase
      vertex_with_same_name.save
    end

    it { should_not be_valid }
  end




end
