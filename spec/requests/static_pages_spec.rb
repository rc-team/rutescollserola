# encoding: utf-8

require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Rutes Collserola" }

  describe "Home page" do

    it "should have the h2 'Collserola en bicicleta'" do
      visit '/static_pages/home'
      page.should have_selector('h2',
                                :text => 'Collserola en bicicleta')
    end

    it "should have the title 'Rutes en bicicleta per Collserola'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Rutes en bicicleta per Collserola")
    end
  end

  describe "Who page" do

    it "should have the h2 'Qui l'ha fet'" do
      visit '/static_pages/who'
      page.should have_selector('h2', :text => 'Qui l\'ha fet')
    end

    it "should have the title 'Qui hi ha al darrera'" do
      visit '/static_pages/who'
      page.should have_selector('title',
                        :text => "Qui hi ha al darrera - #{base_title}")
    end
  end

  describe "About page" do

    it "should have the h2 'Objectius del web'" do
      visit '/static_pages/about'
      page.should have_selector('h2', :text => 'Objectius del web')
    end

    it "should have the title 'Sobre el web'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Sobre el web - #{base_title}")
    end
  end

  describe "Downloads page" do

    it "should have the h2 'Sel·lecció de fotografies'" do
      visit '/static_pages/downloads'
      page.should have_selector('h2', :text => 'Sel·lecció de fotografies')
    end

    it "should have the title 'Descàrregues'" do
      visit '/static_pages/downloads'
      page.should have_selector('title',
                        :text => "Descàrregues - #{base_title}")
    end
  end
end

