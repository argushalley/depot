require 'spec_helper'

describe "User pages" do
  
  subject { page }
  let(:user) { FactoryGirl.create(:user) }
  before { login user }

  describe "show user page" do
  	before { visit user_path(user) }
  	it { should have_content(user.name) }
  end

  describe "new user page" do
  	before { visit new_user_path }
  	it { should have_content('New user') }
  end

  describe "new user" do

  	before { visit new_user_path }

  	let(:submit) { "Create User" }

  	describe "with invalid information" do
  		it "should not create a user" do
  			expect { click_button submit }.not_to change(User, :count)
  		end

  		describe "after submission" do
  			before { click_button submit }

  			it { should have_content('New user') }
  			it { should have_selector('div.alert.alert-error') }
  		end
  	end

  	describe "with valid information" do
  		before do
  			fill_in "Name",			with: "Lorem Ipsum"
  			fill_in "Password",	with: "secret"
  			fill_in "Confirm",	with: "secret"
  		end

  		it "should create a user" do
  			expect { click_button submit }.to change(User, :count).by(1)
  		end

  		describe "after saving the user" do
  			before { click_button submit }
  			let(:new_user) { User.find_by(name: "Lorem Ipsum") }

  			it { should have_content("successfully created") }

  		#	it { should have_link('Orders',			href: orders_path) }
  		#	it { should have_link('Products',		href: products_path) }
  		#	it { should have_link('Users',			href: users_path) }
  		#	it { should have_button('Logout') }
  		end
  	end
  end

  describe "edit" do
  	before { visit edit_user_path(user) }

  	describe "page" do
  		it { should have_content("Editing user") }
  	end

  	describe "with valid information" do
  		let(:new_name)	{ "New Name" }
  		let(:new_passwd)	{ "newpasswd" }
  		before do
  			fill_in "Name", 		with: new_name
				fill_in "Password", with: new_passwd
				fill_in "Confirm", 	with: new_passwd
				click_button "Create User"
  		end

  		it { should have_content("Listing users") }
  		specify { expect(user.reload.name).to eq new_name.downcase }
  	end
  end
end
