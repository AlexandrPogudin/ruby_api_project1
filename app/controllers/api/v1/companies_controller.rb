class Api::V1::CompaniesController < ApplicationController
  # GET /api/v1/companies
  def index
    companies = Company.all
    render json: companies
  end

  # GET /api/v1/companies/:id
  def show
    company = Company.find(params[:id])
    render json: company
  end

  # POST /api/v1/companies
  def create
    company = Company.new(company_params)

    if company.save
      render json: company, status: :created
    else
      render json: { error: company.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PUT /api/v1/companies/:id
  def update
    company = Company.find(params[:id])

    if company.update(company_params)
      render json: company
    else
      render json: { error: company.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/companies/:id
  def destroy
    company = Company.find(params[:id])
    company.destroy

    head :no_content
  end

  private

  # Strong Parameters для компании
  def company_params
    params.require(:company).permit(:name, :location)
  end
end