class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception
  before_action :login_required

  def check
    if current_user&.admin?
      redirect_to rails_admin_path
    else
      redirect_to posts_path
    end
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  private

  def login_required
    redirect_to new_session_path unless current_user
  end

end
