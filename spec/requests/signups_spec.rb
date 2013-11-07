require 'spec_helper'

describe "Signups" do
  it "shows user story page after submitting story" do	
  	
  	visit new_user_path 
  	fill_in :name, :with => 'Stan'
  	
  	fill_in :email, :with => 'stan@pushingsocial.com'
  	fill_in :story, :with => 'story'
  	fill_in :tweetable, :with => 'the man'
  	fill_in :nickname, :with => 'hammer time'
  	choose('hobby')
  	click_button "Send"
  end
end
