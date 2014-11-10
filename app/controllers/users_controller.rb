class UsersController < ApplicationController
  def index
    @users = User.all
    @page_title = '使用者列表'
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
    @page_title = @user.name + ' 的基本資料'
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def new
    @user = User.new
    @page_title = '新增使用者'
  end

  def edit
    @user = User.find(params[:id])
    @page_title = '編輯' + @user.name + '的基本資料'
  end

  private

  def user_params
    params.require( :user).permit( :name, :account, :password)
  end

end
