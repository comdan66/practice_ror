class MainController < ApplicationController
  def index
    # binding.pry
  end

  def list
    @users = User.all;
  end

  def create
    @user = User.new;
  end
  def create_submit
    @user = User.create(create_user_params);
    redirect_to :action => :message, :string => @user.save ? "新增成功！" : "新增失敗！"
  end

  def update
    @user = User.find(params[ :id])
  end
  def update_submit
    @user = User.find(params[ :id])
    redirect_to :action => :message, :string => @user.update(update_user_params) ? "修改成功！" : "修改失敗！"
  end

  
  def delete
    @user = User.find(params[ :id])
    redirect_to :action => :message, :string => @user.destroy ? "刪除成功！" : "刪除失敗！"
  end
  
  def message
    @message = params[:string];  
  end

  private

  def update_user_params
    params.require( :user).permit( :name, :account, :password)
  end
  def create_user_params
    params.require( :user).permit( :name, :account, :password)
  end
end
