require 'spec_helper'

describe "Catalog Pages" do
	subject { page }
	
	describe "without signing in" do
	
		before { visit '/catalog' }
	
		describe "Catalog Page" do
	
			it { should have_selector('h1',    text: 'Like these Turtles') }
			it { should have_title(full_title('Catalog')) }
		end
	end
	
	describe "with Singing In" do
		let(:user) { FactoryGirl.create(:user) }
    	before do
    		sign_in user
			visit edit_user_path(user) 
		end
    		
    		
		
	end
end
