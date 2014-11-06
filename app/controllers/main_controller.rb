class MainController < ApplicationController
  def index
  end

  def users
    @users = User.all;
  end

  def create
    @user = User.new;
  end

  def save
    redirect_to :action => :create
    @user = User.new;
  end
  
end
