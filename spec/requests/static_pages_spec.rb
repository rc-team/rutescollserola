# encoding: utf-8

require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h2', text: 'Collserola en bicicleta') }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "Who page" do
    before { visit who_path }

    it { should have_selector('h2', text: 'Qui l\'ha fet') }
    it { should have_selector('title', text: full_title('Qui hi ha al darrera')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h2', text: 'Objectius del web') }
    it { should have_selector('title', text: full_title('Sobre el web')) }
  end

  describe "Downloads page" do
    before { visit downloads_path }

    it { should have_selector('h2', text: 'Sel·lecció de fotografies') }
    it { should have_selector('title', text: full_title('Descàrregues')) }
  end
end

