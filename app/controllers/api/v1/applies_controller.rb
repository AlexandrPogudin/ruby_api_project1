class Api::V1::AppliesController < ApplicationController
  # GET /api/v1/applies
  def index
    applies = Apply.all
    render json: applies
  end

  # GET /api/v1/applies/:id
  def show
    apply = Apply.find(params[:id])
    render json: apply
  end

  # POST /api/v1/applies
  def create
    apply = Apply.new(apply_params)

    if apply.save
      render json: apply, status: :created
    else
      render json: { error: apply.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PUT /api/v1/applies/:id
  def update
    apply = Apply.find(params[:id])

    if apply.update(apply_params)
      render json: apply
    else
      render json: { error: apply.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/applies/:id
  def destroy
    apply = Apply.find(params[:id])
    apply.destroy

    head :no_content
  end

  private

  # Strong Parameters: разрешаем ключи ассоциаций и булевы статусы
  def apply_params
    params.require(:apply).permit(:job_id, :geek_id, :read, :invited)
  end
end