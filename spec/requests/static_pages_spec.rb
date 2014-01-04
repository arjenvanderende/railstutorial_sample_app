require 'spec_helper'

describe "Static pages" do

  describe "Home" do

    it "has the content 'Sample App'" do
      visit static_pages_home_path
      expect(page).to have_content('Sample App')
    end

    it "has the right title" do
      visit static_pages_home_path
      expect(page).to have_title("Home | Ruby on Rails Tutorial Sample App")
    end
  end

  describe "Help" do

    it "has the content 'Help'" do
      visit static_pages_help_path
      expect(page).to have_content('Help')
    end

    it "has the right title" do
      visit static_pages_help_path
      expect(page).to have_title("Help | Ruby on Rails Tutorial Sample App")
    end
  end

  describe "About" do

    it "has the content 'About Us'" do
      visit static_pages_about_path
      expect(page).to have_content('About Us')
    end

    it "has the right title" do
      visit static_pages_about_path
      expect(page).to have_title("About Us | Ruby on Rails Tutorial Sample App")
    end
  end

  describe "Contact" do

    it "has the content 'Contact'" do
      visit static_pages_contact_path
      expect(page).to have_content('Contact')
    end

    it "has the right title" do
      visit static_pages_contact_path
      expect(page).to have_title("Contact | Ruby on Rails Tutorial Sample App")
    end
  end
end
