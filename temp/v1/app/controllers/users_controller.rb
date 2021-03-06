class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update, :destroy]
  before_action :set_jobs, only: [ :new, :create, :edit, :update]

  def index
    @users = User.includes(:job).all
    @page_title = '使用者列表'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'user was successfully created'
      redirect_to :action => :index
    else
      flash[:error] = @user.errors.full_messages
      render :action => :new
    end
  end

  def show
    @page_title = "#{@user.name} 的基本資料"
  end

  def update
    if @user.update(user_params)
      flash[:notice] = 'user was successfully updated'
      redirect_to :action => :show, :id => @user
    else
      flash[:error] = @user.errors.full_messages
      render :action => :edit
    end
  end

  def destroy
    if @user.destroy
      flash[:notice] = 'User was successfully deleted'
    else
      flash[:error] = 'Delete user error'
    end

    redirect_to users_path
  end

  def new
    @user = User.new
    @page_title = '新增使用者'
  end

  def edit
    @page_title = "編輯 #{@user.name} 的基本資料"
  end

  private

  def user_params
    params.require( :user).permit( :name, :account, :password, :job_id)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_jobs
    @jobs = Job.all
  end
end
