require 'spec_helper'

describe ApplicationHelper do

  describe "full title" do
    it "should include the page title" do
      full_title("foo").should =~ /foo/
    end

    it "should end with the base title" do
      full_title("foo").should =~ /Rutes Collserola$/
    end

    it "should not include a dash for the home page" do
      full_title("").should_not =~ /\-/
    end
  end
end
