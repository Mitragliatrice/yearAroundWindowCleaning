module ApplicationHelper

  def login_helper style =''
    if user_signed_in?
      (link_to "Quotes", quotes_path, class: "nav-link #{active? quotes_path}") +
      " ".html_safe +
      (link_to "#{current_user.name} - Log Out", destroy_user_session_path, method: :delete, class: style)
    end
  end


  def set_copyright
    @copyright = MitsCopyrightGenerator::Renderer.copyright 'Colton Mathews', 'All rights reserved'
  end

  def active? path
    "active" if current_page? path
  end

end