class UsersController < ApplicationController
  before_action :set_user, only:[:show, :update, :edit, :destroy]

  def index
    
      @users = policy_scope(user).order(created_at: :desc)
  end

  def show
    authorize @user
  end

  def update
    authorize @user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def edit
    authorize @user
  end

  def destroy
    authorize @user
    @user.destroy
    redirect_to root_path
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:email, :password, :name, :surname, :age)
  end
  
  # I m just checking if the push origin master is still working after some config
end
end

