require 'spec_helper'

	describe "User pages" do

		subject { page }

		describe "signup page" do
			before { visit '/signup' }

			it { should have_selector('h1',    text: 'Sign up') }
			it { should have_title(full_title('Sign up')) }
			
			let(:submit) { "Create my account" }

			describe "with invalid information" do
				it "should not create a user" do
					expect { click_button submit }.not_to change(User, :count)
				end
			end

			describe "with valid information" do
				before do
					fill_in "Name",         with: "Example User"
					fill_in "Email",        with: "user@example.com"
					fill_in "Password",     with: "foobar"
					fill_in "Confirmation", with: "foobar"
  				end

				it "should create a user" do
					expect { click_button submit }.to change(User, :count).by(1)
  				end

  				describe "after saving the user" do
					before { click_button submit }
					it { should have_link('Sign out') }
  				end
 			end
		end

		describe "profile page" do
		
			let(:user) { FactoryGirl.create(:user) }
			
			describe "signin before visiting profile page" do
			
        		before do
        		
          			visit user_path(user)
          			fill_in "Email",    with: user.email
          			fill_in "Password", with: user.password
          			click_button "Sign in"
        		end

        		describe "after signing in" do
					before { visit user_path(user) }

					it { should have_selector('h1',    text: user.name) }
					it { should have_title(full_title(user.name)) }
        		end
      		end
		end
		
		describe "edit" do
		
    		let(:user) { FactoryGirl.create(:user) }
    		before do
    			sign_in user
    			visit edit_user_path(user) 
    		end
    		
    		describe "page" do
      			it { should have_content("Update your profile") }
      			it { should have_title("Edit user") }
    		end

    		describe "with invalid information" do
      			before { click_button "Save changes" }
      			it { should have_content('error') }
    		end
    		
    		describe "with valid information" do
      			let(:new_name)  { "New Name" }
      			let(:new_email) { "new@example.com" }
      			before do
        			fill_in "Name",             with: new_name
        			fill_in "Email",            with: new_email
        			fill_in "Password",         with: user.password
        			fill_in "Confirm Password", with: user.password
        			click_button "Save changes"
      			end

      			it { should have_title(new_name) }
      			it { should have_selector('div.alert.alert-success') }
      			it { should have_link('Sign out', href: signout_path) }
      			specify { expect(user.reload.name).to  eq new_name }
      			specify { expect(user.reload.email).to eq new_email }
    		end
  		end
	end