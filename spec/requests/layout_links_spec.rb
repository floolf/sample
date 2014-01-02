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
end
