class Api::JobsController < ApplicationController
  def index
    @jobs = Job.all;
    render 
  end
  
  def create
  end

  def show
  end

  def update
  end
  
  def destroy
  end

  private

  # provide filter params for search

  def job_params
    params.require(:job).permit(
      :title,
      :company,
      :employer_id,
      :description,
      :featured,
      :locations,
      :remote_ok,
      :tenure,
      :specialty,
      :role
    )
  end
end
