class UserInfosController < ApplicationController
  before_action :find_user
  before_action :find_info, only: [ :show, :edit, :update, :destroy]

  def show
  end

  def new
    @info = @user.build_info
  end

  def create
    @info = @user.build_info( info_params )
    if @info.save
      flash['notice'] = 'Success!'
      redirect_to :action => :show
    else
      flash['error'] = 'Failure!'
      render :action => :new
    end
  end

  def edit
  end

  def update

    if @info.update( info_params )
      flash['notice'] = 'Success!'
      redirect_to :action => :show
    else
      flash['error'] = 'Failure!'
      render :action => :edit
    end
  end

  def destroy
    @info.destroy

    redirect_to :action => :show
  end

  private

  def find_user
    @user = User.find( params[:user_id] )
  end

  def info_params
    params.require( :info).permit( :nickname, :address)
  end

  def find_info
    @info = @user.info
  end
end
