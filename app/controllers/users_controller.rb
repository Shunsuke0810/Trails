class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  before_action :set_unit, only: %i[ create new  edit update]
  before_action :set_user, only: %i[ show edit update destroy ]
  
def edit
end

def update
  if @user.update(user_params)
    redirect_to user_path(@user.id), notice: "ユーザー情報が編集されました"
  else
    render :edit
  end
end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: User.where(unit_id: @user.unit.id).ids).order(ocurence: "DESC")
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :position, :password,
                                  :password_confirmation, :unit_id)
  end

  def set_unit
    @unit = Unit.all
  end

  def set_user
    @user = User.find(params[:id])
  end

  
end
