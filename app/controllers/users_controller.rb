class UsersController < ApplicationController
  before_action :get_user, only: [ :edit, :update, :destroy]

  def index
    @page_title = '使用者列表'
    @users = User.all
  end

  def new
    @page_title = '新增使用者'
    @user = User.new
  end

  def edit
    @page_title = "編輯 #{@user.name} 的基本資料"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :action => :index
    else
      render :action => :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to :action => :index
    else
      render :action => :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to :action => :index
  end

  private

  def user_params
    params.require( :user).permit( :name, :account, :password)
  end
  def get_user
    @user = User.find(params[:id])
  end
end
