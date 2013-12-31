class PagesController < ApplicationController
  def home
	@title="Accueil"
  end

  def contact
	@title="contact"
  end
  
  def about
	@title="about"
  end
   def help
	@title="help"
  end
end
