require 'rails_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'StaticPages#home'" do
      visit '/static_pages/home'
      expect(page).to have_content('StaticPages#home')
    end
  end

  describe "Help page" do
    it "should have the content 'StaticPages#help'" do
      visit '/static_pages/help'
      expect(page).to have_content('StaticPages#help')
    end
  end

  describe "About page" do
    it "should have the content 'StaticPages#about'" do
      visit '/static_pages/about'
      expect(page).to have_content('StaticPages#about')
    end

    it "should have the title 'StaticPages#about'" do
      visit '/static_pages/about'
      expect(page).to have_title('SampleApp')
    end
  end

end