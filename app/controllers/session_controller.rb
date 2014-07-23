class SessionController < ApplicationController
  
  layout false
  respond_to :json

  def create
  	@email = params[:email];
  	@password = params[:password];

  	$result = User.where(:email => @email, :password => @password)
    render json: {response: true, error: false, message: "Session Create Successful" }
  end

  def destroy
    render json: {response: true, error: false, message: "Session Destroy Successful" }
  end
end
