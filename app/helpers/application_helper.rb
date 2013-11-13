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

  def markdownify(content)
    @@markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
    @@markdown.render(content)
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + '_fields', f: builder)
    end
    link_to(name, '#', class: 'add_fields', data: { id: id, fields: fields.gsub('\n', ''),
                                                    :'no-turbolink' => true })
  end
end
