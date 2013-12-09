require 'spec_helper'

describe Order do
	before do
		@order = Order.new(name: "Example Name", address: "Example Address", 
											 email: "foo@bar.com", pay_type: Order::PAYMENT_TYPES[1])
	end

	subject { @order }

	it { should respond_to(:name) }
	it { should respond_to(:address) }
	it { should respond_to(:email) }
	it { should respond_to(:pay_type) }

	it { should be_valid }

	describe "when name is not present" do
		before { @order.name = " " }
		it { should_not be_valid }
	end

	describe "when address is not present" do
		before { @order.address = " " }
		it { should_not be_valid }
	end

	describe "when email is not present" do
		before { @order.email = " " }
		it { should_not be_valid }
	end

	describe "when pay_type is not present" do
		before { @order.pay_type = " " }
		it { should_not be_valid }
	end
end