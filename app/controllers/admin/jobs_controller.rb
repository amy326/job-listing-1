class Admin::JobsController < ApplicationController
   before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
   before_action :require_is_admin
   layout "admin"
   def show
      @job = Job.find(params[:id])
   end

   def index
      @jobs = Job.all
   end

   def new
      @job = Job.new
   end

   def create
      @job = Job.new(job_params)
      if @job.save
         redirect_to admin_jobs_path, notice: 'Succeed'
      else
         render :new
      end
   end

   def edit
      @job = Job.find(params[:id])
   end

   def update
      @job = Job.find(params[:id])
      if @job.update(job_params)
            redirect_to admin_jobs_path
      else
            render :edit
      end
   end

   def destroy
      @job = Job.find(params[:id])
      @job.destroy
      redirect_to admin_jobs_path, alert: 'Job Deleted!'
   end

   def publish
      @job = Job.find(params[:id])
      @job.publish!
      redirect_to :back
   end

   def hide
      @job = Job.find(params[:id])
      @job.hide!
      redirect_to :back
   end

   def require_is_admin
    if !current_user.admin?
      flash[:alert] = 'You are not admin'
      redirect_to root_path
    end
  end

  def destroy
     @job = Job.find(params[:id])
     @job.destroy
     redirect_to admin_jobs_path, alert: 'Job Deleted!'
  end


   private

   def job_params
<<<<<<< HEAD
      params.require(:job).permit(:title, :descriotion, :time_upper_bound, :time_lower_bound, :contact_email, :is_hidden, :image)
   end


   def remove_img
      @job = Job.find(params[:id])
      @job.destroy
      edirect_to admin_jobs_path, alert: 'Image Deleted!'
=======
      params.require(:job).permit(:title, :description, :time_upper_bound, :time_lower_bound, :contact_email, :is_hidden)
>>>>>>> origin/amy1
   end



end
