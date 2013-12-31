require 'spec_helper'

describe PagesController do
  render_views
   before(:each) do
    #
    @base_title="Simple App du Tutoriel Ruby on Rails | "
    #
  end


  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
	it "devrait avoir le bon titre" do
      get 'home'
      response.should have_selector("title",
                        :content => @base_title + "Accueil")
    end
 end 

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
	it "devrait avoir le bon titre" do
      get 'contact'
      response.should have_selector("title",
                        :content => @base_title + "contact")
    end
  end
  describe "GET 'about'" do
    it "should work" do
      get 'about'
      response.should be_success
	end
	it "devrait avoir le bon titre" do
      get 'about'
      response.should have_selector("title",
                        :content => @base_title + "about")
    end
end
describe "GET 'help'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
	it "devrait avoir le bon titre" do
      get 'help'
      response.should have_selector("title",
                        :content => @base_title + "help")
    end
  end
end
