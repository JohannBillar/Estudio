FactoryGirl.define do
	
	factory :user do
		sequence :email do |n| 
			"jwbillar#{n}@gmail.com"
		end
		password "Rallib1975"
	end

	factory :place do
		name "My Music Store"
		description "Only store around"
		address "5000 Newport Ave, San Diego, CA 92107"
		association :user
	end

end