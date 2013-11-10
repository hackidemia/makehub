module ProjectsHelper
  def select_for_project(f, attr, html_params = {})
    select_class = html_params.delete(:class)
    html_params[:class] = select_class ? [select_class, 'span2'].join(' ') : 'span2'
    f.select(attr, APPCONFIG['project'][attr.to_s].map { |i| [i, i] },
      { prompt: attr.to_s.capitalize }, html_params)
  end

  def fork_btn_for(project)
    link_to 'Fork', fork_project_path(project), method: :post, class: 'btn btn-primary', data: { confirm: 'Are you sure?' } if can_fork?(project)
  end

  def step_nav_link_for(project, step, editable)
    return if step.new_record?
    content_tag :li do
      if editable
        link_to edit_project_step_path(project, step) do
          markdownify(step.name).html_safe
        end
      else
        link_to project_step_path(project, step) do
          markdownify(step.name).html_safe
        end
      end
    end
  end
end
