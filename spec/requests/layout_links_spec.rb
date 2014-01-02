require 'spec_helper'

describe "LayoutLinks" do
 it "devrait trouver une page Accueil at '/'" do
    get '/'
    response.should have_selector('title', :content => "Accueil")
  end

  it "devrait trouver une page Contact at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "about")
  end

  it "devrait trouver une page Aide at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "help")
  end
  it "devrait trouver une page Inscription at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Inscription")
  end
  it "devrait avoir le bon lien sur le layout" do
    visit root_path
    click_link "About"
    response.should have_selector('title', :content => "about")
    click_link "Aide"
    response.should have_selector('title', :content => "help")
    click_link "Contact"
    response.should have_selector('title', :content => "contact")
    click_link "Accueil"
    response.should have_selector('title', :content => "Accueil")
    click_link "S'inscrire!"
    response.should have_selector('title', :content => "Inscription")
  end
end
