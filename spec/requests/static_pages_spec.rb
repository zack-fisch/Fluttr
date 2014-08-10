require 'spec_helper'

describe "Static pages" do

	let (:base_title) { "Fluttr" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Fluttr')
    end

    	it 'should have the right title' do
  		visit root_path
  		expect(page).to have_title("#{base_title}")
  	end

  	it 'should not have a custom title' do
  		visit root_path
  		expect(page).not_to have_title("#{base_title} | Home")
  	end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    	it 'should have the right title' do
  		visit help_path 
  		expect(page).to have_title(" #{base_title} | Help")
  	end
  end

  describe 'About page' do
  	it 'should have the content "About Us"' do
  		visit about_path
  		expect(page).to have_content('About Us')
  	end

  	it 'should have the right title' do
  		visit about_path 
  		expect(page).to have_title(" #{base_title} | About")
  end
end

	describe 'Contact Page' do
		it 'should have the content "Contact Us"' do
			visit contact_path
			expect(page).to have_content('Contact Us')
		end
	end

	describe 'Contact Page' do
		it 'should have the right title' do
			visit contact_path
			expect(page).to have_title(" #{base_title} | Contact Us")
		end
	end

end