require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home" do

    it "has the content 'Sample App'" do
      visit static_pages_home_path
      expect(page).to have_content('Sample App')
    end

    it "has the right title" do
      visit static_pages_home_path
      expect(page).to have_title("#{base_title}")
    end

    it "has no custom page title" do
      visit static_pages_home_path
      expect(page).not_to have_title('Home |')
    end
  end

  describe "Help" do

    it "has the content 'Help'" do
      visit static_pages_help_path
      expect(page).to have_content('Help')
    end

    it "has the right title" do
      visit static_pages_help_path
      expect(page).to have_title("Help | #{base_title}")
    end
  end

  describe "About" do

    it "has the content 'About Us'" do
      visit static_pages_about_path
      expect(page).to have_content('About Us')
    end

    it "has the right title" do
      visit static_pages_about_path
      expect(page).to have_title("About Us | #{base_title}")
    end
  end

  describe "Contact" do

    it "has the content 'Contact'" do
      visit static_pages_contact_path
      expect(page).to have_content('Contact')
    end

    it "has the right title" do
      visit static_pages_contact_path
      expect(page).to have_title("Contact | #{base_title}")
    end
  end
end
