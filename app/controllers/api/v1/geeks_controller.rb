class Api::V1::GeeksController < ApplicationController
  # GET /api/v1/geeks
  def index
    geeks = Geek.all
    render json: geeks
  end

  # GET /api/v1/geeks/:id
  def show
    geek = Geek.find(params[:id])
    render json: geek
  end

  # POST /api/v1/geeks
  def create
    geek = Geek.new(geek_params)

    if geek.save
      render json: geek, status: :created
    else
      render json: { error: geek.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PUT /api/v1/geeks/:id
  def update
    geek = Geek.find(params[:id])

    if geek.update(geek_params)
      render json: geek
    else
      render json: { error: geek.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/geeks/:id
  def destroy
    geek = Geek.find(params[:id])
    geek.destroy

    head :no_content
  end

  private

  # Strong Parameters: разрешаем принимать только поля соискателя
  def geek_params
    params.require(:geek).permit(:name, :stack, :resume)
  end
end
