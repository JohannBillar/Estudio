FactoryGirl.define do
	factory :user do
		email "jwbillar@gmail.com"
		password "Rallib1975"
	end
	factory :place do
		name "My Music Store"
		description "Only store around"
		address "5000 Newport Ave, San Diego, CA 92107"
	end
end