require 'spec_helper'


describe "User Pages" do

	let (:base_title) { "Fluttr" }

	describe 'Signup Page' do 
		it 'Should have the proper content' do
			visit signup_path
			expect(page).to have_content("Sign up")
		end
	end

	describe 'Signup Page' do 
		it 'Should have the proper title' do
			visit signup_path
			expect(page).to have_title("#{base_title} | Sign up")
		end
	end


			
end
