class UsersController < ApplicationController

  def index
    # @users = User.includes(:job).all
    @page_title = '使用者列表'
  end
end
