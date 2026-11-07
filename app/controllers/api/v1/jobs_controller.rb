class Api::V1::JobsController < ApplicationController
  # GET /api/v1/jobs
  def index
    if params[:company_id]
      company = Company.find(params[:company_id])
      jobs = company.jobs
    else
      jobs = Job.all
    end

    render json: jobs
  end
  # GET /api/v1/jobs/:id
  def show
    job = Job.find(params[:id])
    render json: job
  end

  # POST /api/v1/jobs
  def create
    job = Job.new(job_params)

    if job.save
      render json: job, status: :created
    else
      render json: { error: job.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PUT /api/v1/jobs/:id
  def update
    job = Job.find(params[:id])

    if job.update(job_params)
      render json: job
    else
      render json: { error: job.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/jobs/:id
  def destroy
    job = Job.find(params[:id])
    job.destroy

    head :no_content
  end

  private

  # Strong Parameters: Разрешаем принимать только нужные поля для вакансии
  def job_params
    params.require(:job).permit(:name, :place, :company_id)
  end
end
