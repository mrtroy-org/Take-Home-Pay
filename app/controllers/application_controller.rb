class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # To prevent infinite redirects upon signing in
  def after_sign_in_path_for(resource_or_scope)
    "/users/#{current_user.id}/statements"
  end
end
