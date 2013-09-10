require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have right title " do
		visit '/home'
    	page.should have_selector('title', :text => "Ruby on Rails Sample | Home")
    end
  end

  describe "Help Page" do
  	it "should have content 'Help'" do
  		visit '/help'
  		page.should have_selector('h1', :text => 'Help')
  	end

  	it "should have right title" do
  		visit "/help"
  		page.should have_selector("title", :text => "Ruby on Rails Sample | Help")
  	end
  end

  describe "About page" do
  	it "should have content 'About Us'" do
  		visit '/about'
  		page.should have_selector('h1', :text => 'About Us')
  	end

  	it "should have right title" do
  		visit "/about"
  		page.should have_selector("title", :text => "Ruby on Rails Sample | About")
  	end
  end

  describe "Contact Page" do
    it "should have content h1 'Contact' " do
      visit '/contact'
      page.should have_selector('h1',  text: 'Contact')
    end
  end
end
