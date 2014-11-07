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
    # binding.pry
    # @user = User.new(params[:user])
    # if @user.save
    #     redirect_to :action => :success
    # else
    #     redirect_to :action => :failure
    # end
    
    # @user = User.new(params.require(:user).permit(:name, :password, :password))
    # @user.save

    @user = User.create(params.require(:user).permit(:name, :account, :password));
    if @user.save
        redirect_to :action => :success
    else
        redirect_to :action => :failure
    end

  end
  

  def success
    @message = "新增成功！";
  end
  
  def failure
    @message = "新增失敗！";
  end

end
