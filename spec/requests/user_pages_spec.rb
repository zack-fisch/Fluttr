require 'spec_helper'

describe "User Pages" do

	describe 'Signup Page' do 
		it 'Should have the proper content and title' do
			visit signup_path
			expect(page).to have_content('Sign up')
			expect(page).to have_title(full_title('Sign up')) 
		end
	end
end
