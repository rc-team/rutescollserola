# encoding: utf-8

require 'spec_helper'

describe "StaticPages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h2', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }

    let(:heading) { 'Collserola en bicicleta' }
    let(:page_title) { '' }
    it_should_behave_like "all static pages"
  end

  describe "Who page" do
    before { visit who_path }

    let(:heading) { 'Qui l\'ha fet' }
    let(:page_title) { 'Qui hi ha al darrera' }
    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }

    let(:heading) { 'Objectius del web' }
    let(:page_title) { 'Sobre el web' }
    it_should_behave_like "all static pages"
  end

  describe "Downloads page" do
    before { visit downloads_path }

    let(:heading) { 'Sel·lecció de fotografies' }
    let(:page_title) { 'Descàrregues' }
    it_should_behave_like "all static pages"
  end
end

