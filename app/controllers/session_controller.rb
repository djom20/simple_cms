class SessionController < ApplicationController
  
  layout false
  respond_to :json

  # def index
  #   render json: {response: 'hola', error: false }
  #   respond_with Model.destroy(params[:id])
  # end

  def create
    render json: {response: 'hola', error: false }
  end

  # def store
  #   render json: {response: 'hola', error: false }
  # end

  # def show
  #   render json: {response: 'hola', error: false }
  # end

  # def edit
  #   render json: {response: 'hola', error: false }
  # end

  # def update
  #   render json: {response: 'hola', error: false }
  # end

  def destroy
    render json: {response: 'hola', error: false }
  end
end
