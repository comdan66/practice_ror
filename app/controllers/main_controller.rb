class MainController < ApplicationController
  def index
  end

  def users
    @users = User.all;
  end

  def create
    @user = User.new;
  end

  def submit
    # @user = User.new;
  end
  
end
