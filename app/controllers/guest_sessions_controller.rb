class GuestSessionsController < ApplicationController
  skip_before_action :login_required

  def create
    user = User.find_by(email: 'test@example.com')
    log_in(user)
    flash[:success] = 'ゲストユーザーでログインしました'
    redirect_to user_path(user)
  end
end
