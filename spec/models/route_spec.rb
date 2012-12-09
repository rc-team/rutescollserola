# == Schema Information
#
# Table name: routes
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  subtitle    :string(255)
#  description :text(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'spec_helper'

describe Route do

  before { @route = Route.new(name: "Ruta 1", subtitle: "Es de prova", description: "Ipso loro lama paco") }

  subject{ @route }
  

  it { should respond_to(:name) }
  it { should respond_to(:subtitle) }
  it { should respond_to(:description) }

  it { should be_valid }

  describe "when name is not present" do
    before { @route.name = " " }
    it { should_not be_valid}
  end

  describe "when subtitle is not present" do
    before { @route.subtitle = " " }
    it { should_not be_valid}
  end

  describe "when description is not present" do
    before { @route.description = " " }
    it { should_not be_valid}
  end

 describe "when name is too long" do
    before { @route.name = "a" * 51 }
    it { should_not be_valid }
  end

 describe "when subtitle is too long" do
    before { @route.subtitle = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when name is already used" do
    before do
      route_with_same_name = @route.dup
      route_with_same_name.name = @route.name.upcase
      route_with_same_name.save
    end

    it { should_not be_valid }
  end

end
