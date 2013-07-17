class WelcomeController < ApplicationController
  def index
    @latest_projects = Project.order("updated_at DESC").limit(3)
  end
end
