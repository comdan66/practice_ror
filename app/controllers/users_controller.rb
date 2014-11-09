class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.create(create_user_params);
    redirect_to users_path
  end

  def show
    @user = User.find(params[ :id])
  end

  def update
    @user = User.find(params[ :id])
    @user.update(update_user_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[ :id])
    @user.destroy
    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[ :id])
  end

  private

  def create_user_params
    params.require( :user).permit( :name, :account, :password)
  end
  def update_user_params
    params.require( :user).permit( :name, :account, :password)
  end

end
