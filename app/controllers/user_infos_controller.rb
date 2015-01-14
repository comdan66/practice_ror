class UserInfosController < ApplicationController
  before_action :find_user

  def show
    @info = @user.info
  end

  def new
    @info = @user.build_info
  end

  def create
    @info = @user.info.build( info_params )
    if @info.save
      flash['notice'] = 'Success!'
      redirect_to :action => :show
    else
      flash['error'] = 'Failure!'
      render :action => :new
    end
  end

  def edit
    @info = @user.info
  end

  def update
    @info = @user.info

    if @info.update( info_params )
      flash['notice'] = 'Success!'
      redirect_to :action => :show
    else
      flash['error'] = 'Failure!'
      render :action => :edit
    end
  end

  def destroy
    @info = @user.info
    @info.destroy

    redirect_to :action => :show
  end

  private

  def find_user
    @user = User.find( params[:user_id] )
  end

  def info_params
    params.require( :info).permit( :name)
  end
end
