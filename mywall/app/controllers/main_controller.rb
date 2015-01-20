class MainController < ApplicationController
  def index

  end

  def login
    @user = User.new
  end

  def signin
    # @user = User.new
    # @user = User.new(user_params)
    # binding.pry
    @user = User.find_by_account(user_params[:account])
    if !@user
      @user = User.new(user_params)
      if @user.save
        redirect_to :action => :index
      else 
        render :action => :login
      end
    elsif @user.password == params[:password]
      redirect_to :action => :index
    else
        render :action => :login
    end
  end

  private

  def user_params
    params.require( :user).permit( :account, :password)
  end

end
