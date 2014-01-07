require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should start with page title" do
      expect(full_title("foo")).to match(/^foo/)
    end

    it "should end with base title" do
      expect(full_title("foo")).to match(/Ruby on Rails Tutorial Sample App$/)
    end

	it "should include a bar with page title" do
      expect(full_title("foo")).to match(/\|/)
    end

    it "should not include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end