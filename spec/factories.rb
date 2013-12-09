FactoryGirl.define do
	factory :user do
		name			"Foo Bar"
		password	"foobar"
		password_confirmation "foobar"
	end
end