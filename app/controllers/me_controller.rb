class MeController < ApplicationController
  include ApplicationHelper
  # GET /projects
  # GET /projects.json
  def index
    if signed_in?
      @projects = current_user.projects
      respond_to do |format|
        format.html { render 'projects/index' }
        format.json { render template: 'projects/index.json.jbuilder' }
      end
    else
      redirect_to :projects
    end
  end
end
