class SessionController < ApplicationController
  
  layout false
  respond_to :json

  def create
    render json: {response: 'hola10', error: false }
  end

  def destroy
    render json: {response: 'hola11', error: false }
  end
end
