require 'spec_helper'

describe Product do
	before do
		@product = Product.new(title: 			"Example Title",
  												 description: "example description",
  												 price: 			1,
  												 image_url: 	"foo.jpg")
	end

	subject { @product }
	it { should respond_to(:title) }
	it { should respond_to(:description) }
	it { should respond_to(:price) }
	it { should respond_to(:image_url) }

	it { should be_valid }

	describe "when title is not present" do
		before { @product.title = " " }
		it { should_not be_valid }
	end

	describe "when description is not present" do
		before { @product.description = " " }
		it { should_not be_valid }
	end

	describe "when price is not present" do
		before { @product.price = " " }
		it { should_not be_valid }
	end

	describe "product price must be positive" do
		before do
			@product.price = -1
		end

		it { should_not be_valid }
	end

	describe "when image_url is not present" do
		before { @product.image_url = " " }
		it { should_not be_valid }
	end

	describe "when image_url is invalid" do
		it "should be invalid" do
			images_url = %w{ foo.doc foo.gif/bar foo.gif.bar }
			images_url.each do |invalid_image_url|
				@product.image_url = invalid_image_url
				expect(@product).not_to be_valid
			end
		end
	end

	describe "when image_url is valid" do
		it "should be valid" do
			images_url = %w{ foo.gif foo.jpg foo.png FOO.JPG FOO.Jpg http://a.b.c/x/y/z/foo.gif }
			images_url.each do |valid_image_url|
				@product.image_url = valid_image_url
				expect(@product).to be_valid
			end
		end
	end

	describe "product is not valid without a unique title" do
		before do
			product_with_same_title = @product.dup
			product_with_same_title.title = @product.title.upcase
			product_with_same_title.save
		end

		it { should_not be_valid }
	end
end