require 'spec_helper'

describe "Catalog Pages" do
	subject { page }
	
	before { visit '/catalog' }
	
	describe "Catalog Page" do
	
		it { should have_selector('h1',    text: 'Like these Turtles') }
		it { should have_title(full_title('Catalog')) }
	end
	
end
