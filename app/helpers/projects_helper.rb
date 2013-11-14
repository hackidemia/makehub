module ProjectsHelper
  def select_for_project(f, attr, options = nil, html_params = {})
    options = options || { prompt: '-select-' }
    select_class = html_params.delete(:class)
    html_params[:class] = select_class ? [select_class, 'span2'].join(' ') : 'span2'
    f.select(attr, APPCONFIG['project'][attr.to_s].map { |i| [i, i] },
      options, html_params)
  end

  def fork_btn_for(project, html_params={})
    html_params.merge!( method: :post, data: { confirm: 'Are you sure?' } )
    link_to('fork project', fork_project_path(project), html_params) if can_fork?(project)
  end

  def step_nav_link_for(project, step, editable, link_class = '')
    return if step.new_record?
    li_tag = content_tag :li, markdownify(step.name).html_safe
    if editable
      link_to li_tag, edit_project_step_path(project, step), class: link_class
    else
      link_to li_tag, project_step_path(project, step), class: link_class
    end
  end
end
