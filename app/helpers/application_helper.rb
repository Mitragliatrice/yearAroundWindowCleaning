module ApplicationHelper

  def login_helper style =''
    if user_signed_in?
      " ".html_safe +
      (link_to "#{current_user.name} - Log Out", destroy_user_session_path, method: :delete, class: style)
    end
  end
end