class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  before_action :set_unit, only: %i[ create new ]
  


  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: User.where(unit_id: @user.unit.id).ids).order(ocurence: "ASC")
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :position, :password,
                                  :password_confirmation, :unit_id)
  end

  def set_unit
    @unit = Unit.all
  end

  
end
