class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin_required
    if !current_user.is_admin?
      flash[:warning] = "You aren't admin!"
      redirect_to root_path
    end
  end
end
