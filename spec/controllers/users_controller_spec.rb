require 'spec_helper'

describe UsersController do
  describe "Get 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "Sign up")
    end
    it "should have a signup page at '/signup'" do
      get '/signup'
      response.should have_selector('title', :content = > "Sign up")
    end
  end
end
