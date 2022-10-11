class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end 
  def new
    @job =Job.new
  end 
  def create
    Job.create(job_params)
    redirect_to jobs_path
  end  
  private
  def edit
    @job = Job.find(params[:id])
  end
  def update
    @job = Job.find(params[:id])
    @job.update_attributes(job_params)
    redirect_to jobs_path
  end
  def destroy
  #  @job = Job.find(params[:id])
    @job.destroy params[:id]
    redirect_to jobs_path
  end
  def job_params
    params.require(:job).permit(:title, :description,:company_name,:job_type,:location)
  end
end
