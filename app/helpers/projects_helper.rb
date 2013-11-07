module ProjectsHelper
  def select_for_project(f, attr, html_params = {})
    select_class = html_params.delete(:class)
    html_params[:class] = select_class ? [select_class, 'span2'].join(' ') : 'span2'
    f.select(attr, APPCONFIG['project'][attr.to_s].map { |i| [i, i] },
      { prompt: attr.to_s.capitalize }, html_params)
  end
end
