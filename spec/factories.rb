require 'factory_girl'

FactoryGirl.define  do
	factory :user do 
	name "Helena" 
	email "testing@pushingsocial.com"
	story "Test placeholder copy"
	type "hybrid" 
	tweetable "This Rocks!" 
	nickname "terminator gal" 
	avatar { fixture_file_upload(Rails.root.join('spec', 'images', 'stan.jpg'), 'image/jpg') }
	end

end
