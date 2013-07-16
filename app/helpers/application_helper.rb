module ApplicationHelper
  def signed_in?
    # check for ID because we always have a current user
    current_user && current_user.id.present?
  end

  def nav_link(link_text, link_path, html_opts = {})
	  active = current_page?(link_path) ? 'active' : ''

	  content_tag(:li, :class => "#{html_opts[:class]} #{active}") do
	    link_to link_text, link_path
	  end
	end
end
