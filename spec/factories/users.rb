FactoryGirl.define do
  factory :user do
  	sequence :first do |n|
  		"fname_#{n}"
  	end
  	sequence :last do |n|
  		"lname_#{n}"
  	end
  	sequence :email do |n|
  		"email_#{n}@example.com"
  	end
  	sequence :username do |n|
  		"username#{n}"
  	end
  	sequence :pw do |n|
  		"pw_#{n}"
  	end
  	sequence :devicetoken do |n|
  		"devicetoken#{n}"
  	end
  end

end
