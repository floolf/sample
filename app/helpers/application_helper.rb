module ApplicationHelper

  def logo
    logo = image_tag("logo.png", :alt => "Application exemple", :class => "round") 
  end

  # Retourner un title basé sur la page.
  def title
    base_title = "Simple App du Tutoriel Ruby on Rails"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end