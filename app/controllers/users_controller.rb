class UsersController < ApplicationController
  before_action :set_user, :only => [ :show, :edit, :update, :destroy]

  def index
    @users = User.all
    @page_title = '使用者列表'
  end

  def create
    flash[:notice] = "user was successfully created"

    @user = User.new(user_params)
    if @user.save
      redirect_to :action => :index
    else
      render :action => :new
    end
  end

  def show
    @page_title = @user.name + ' 的基本資料'
  end

  def update
    flash[:notice] = "user was successfully updated"

    if @user.update(user_params)
      redirect_to :action => :show, :id => @user
    else
      render :action => :new
    end
  end

  def destroy
    flash[:alert] = "user was successfully deleted"
    
    @user.destroy
    redirect_to users_path
  end

  def new
    @user = User.new
    @page_title = '新增使用者'
  end

  def edit
    @page_title = '編輯' + @user.name + '的基本資料'
  end

  private

  def user_params
    params.require( :user).permit( :name, :account, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
