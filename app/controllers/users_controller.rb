class UsersController < ApplicationController
  before_action :find_user, only: [ :edit, :update, :destroy, :show]

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
      flash[:notice] = 'Success!'
      redirect_to :action => :index
    else
      flash[:error] = 'Failure!'
      render :action => :new
    end
  end

  def update
    if @user.update(user_params)
      flash[:notice] = 'Success!'
      redirect_to :action => :index
    else
      flash[:error] = 'Failure!'
      render :action => :edit
    end
  end

  def destroy
    if @user.destroy
      flash[:notice] = 'Success!'
    else
      flash[:error] = 'Failure!'
    end
      redirect_to :action => :index
  end

  private

  def user_params
    params.require( :user).permit( :name, :account, :info_attributes => [:nickname, :address, :_destroy])
  end

  def find_user
    @user = User.find(params[:id])
  end
end
