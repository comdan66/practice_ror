class JobsController < ApplicationController
  before_action :set_job, only: [ :show, :edit, :update, :destroy]

  def index
    # @jobs = Job.all
    @jobs = Job.includes(:users).all
    @page_title = '職業列表'
  end

  def new
    @job = Job.new
    @page_title = '新增職業'
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:notice] = 'Job was successfully created'
      redirect_to :action => :index
    else
      flash[:error] = @job.errors.full_messages
      render :action => :new
    end
  end

  def show
    @page_title = "#{@job.name} 基本資訊"
  end

  def edit
    @page_title = "編輯 #{@job.name} 的基本資料"
  end

  def update
    if @job.update(job_params)
      flash[:notice] = 'Job was successfully updated'
      redirect_to :action => :show, :id => @job
    else
      flash[:error] = @job.errors.full_messages
      render :action => :edit
    end
  end

  def destroy
    if @job.destroy
      flash[:notice] = 'Job was successfully deleted'
    else
      flash[:error] = 'Delete job error'
    end
    redirect_to jobs_path
  end

  private

  def job_params
    params.require( :job).permit( :name)
  end

  def set_job
    @job = Job.find(params[:id])
  end

end
