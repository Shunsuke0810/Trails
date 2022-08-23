class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception
  before_action :login_required
  before_action :admin_required, if: :admin_url?
  # before_action :authenticate_admin!, if: :admin_url
 

  # def authenticate_admin!
  #   binding.pry
  #   if current_user.admin?
  #     redirect_to rails_admin_path
  #   else
  #     redirect_to root_path
  #   end
  # end

  # def admin_url
  #   binding.pry
  #   request.fullpath.include?("/admin")
  # end

  def log_in(user)
    session[:user_id] = user.id
  end

  private

  def login_required
    redirect_to new_session_path unless current_user
  end

  def admin_url?
    request.fullpath.include?("/admin")
  end

  def admin_required
    redirect_to request.url.sub(/admin.*/, ""), notice: "管理者以外はアクセス不可！" unless current_user.admin?
  end

end
