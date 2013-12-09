require 'spec_helper'

describe "Authentication" do
  
  subject { page }

  describe "login page" do
  	before { visit login_path }

  	it { should have_content('Please Log In') }
  end

  describe "login" do
  	before { visit login_path }

  	describe "with invalid information" do
  		before { click_button "Login" }

  		it { should have_selector('div.alert.alert-error', text: 'Invalid') }

  		describe "after visiting another page" do
  			before { click_link "Home" }
  			it { should_not have_selector('div.alert.alert-error') }
  		end
  	end

  	describe "with valid information" do
  		let(:user) { FactoryGirl.create(:user) }
  		before do 
  			login user
  		end

  		it { should have_content("Welcome") }
  		it { should have_link('Orders',			href: orders_path) }
  		it { should have_link('Products',		href: products_path) }
  		it { should have_link('Users',			href: users_path) }

  		describe "followed by logout" do
  			before { click_button "Logout" }
  			it { should_not have_link('Orders',			href: orders_path) }
  			it { should_not have_link('Products',		href: products_path) }
  			it { should_not have_link('Users',			href: users_path) }
  		end
  	end
  end

  describe "authorization" do

    describe "for non-signed-in users" do
      let(:user) { FactoryGirl.create(:user) }

      describe "in the Users controller" do

        describe "visiting the edit page" do
          before { visit edit_user_path(user) }
          it { should have_content('Please Log In') }
        end

        describe "submitting to the update action" do
          before { patch user_path(user) }
          specify { expect(response).to redirect_to(login_path) }
        end
      end
    end
  end
end
