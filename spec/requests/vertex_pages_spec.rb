
require 'spec_helper'

describe "Vertex pages" do

  subject { page }
  
  
  
  describe "new" do

    before { visit new_vertex_path }

    let(:submit) { "Ok" }

    describe "with invalid information" do
      it "should not create a vertex" do
        expect { click_button submit }.not_to change(Vertex, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",      with: "Vertex 1"
        fill_in "lat",       with: 41.1
        fill_in "lon",       with: 2.1
      end

      it "should create a user" do
        expect { click_button submit }.to change(Vertex, :count).by(1)
      end
    end
  end
end
