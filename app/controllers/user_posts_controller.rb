class UserPostsController < ApplicationController
  before_action :find_user
  before_action :find_post, only: [ :show, :edit, :update, :destroy]

  def index
    @posts = @user.posts
    @page_title = "#{@user.name} 的文章列表"
  end

  def show
  end

  def new
    @post = @user.posts.build
    @page_title = "新增 #{@user.name} 的文章"
  end

  def create
    @post = @user.posts.build( post_params )
    if @post.save
      flash['notice'] = 'Success!'
      redirect_to :action => :index
    else
      flash['error'] = 'Failure!'
      render :action => :new
    end
  end

  def edit
    @page_title = "編輯 #{@user.name} 的文章"
  end

  def update
    if @post.update( post_params )
      flash['notice'] = 'Success!'
      redirect_to :action => :index
    else
      flash['error'] = 'Failure!'
      render :action => :new
    end
  end

  def destroy
    @post.destroy

    redirect_to :action => :index
  end
  private

  def find_user
    @user = User.find( params[:user_id] )
  end

  def post_params
    params.require( :post).permit( :title, :content)
  end

  def find_post
    @post = @user.posts.find( params[:id] )
  end

end
