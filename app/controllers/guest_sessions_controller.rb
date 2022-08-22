class GuestSessionsController < ApplicationController
  skip_before_action :login_required

  def create_general
    user = User.find_by(email: 'test@example.com')
    log_in(user)
    flash[:success] = 'ゲストユーザー(一般)でログインしました'
    redirect_to user_path(user)
  end

  def create_admin
    user = User.find_by(email: 'test_admin@example.com')
    log_in(user)
    flash[:success] = 'ゲストユーザー(管理者)でログインしました'
    redirect_to user_path(user)
  end

end
