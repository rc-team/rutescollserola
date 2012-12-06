require 'spec_helper'

describe "Route pages" do

  subject { page }

  describe "route view page" do
    let(:route) {FactoryGirl.create(:route) }
    before { visit route_path(route) }

    it { should have_selector('h2', text: route.name) }
    it { should have_selector('h3', text: route.subtitle) }
  end
end
