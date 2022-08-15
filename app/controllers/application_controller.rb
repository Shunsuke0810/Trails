class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception
  before_action :login_required

  private

  def login_required
    redirect_to new_session_path unless current_user
  end

end
