module ApplicationHelper
  def signed_in?
    # check for ID because we always have a current user
    current_user.id.present?
  end
end
