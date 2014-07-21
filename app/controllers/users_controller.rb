class UsersController < ApplicationController
  def index
    @users = User.all()
    if( @users.count > 0 )
      render json: { response: @users, error: false, message: nil }
    else
      render json: { response: nil, error: true, message: 'Not exists users' }
    end
  end

  def create
    render json: { response: 'hola12', error: false }
  end

  def show
    @user = User.where(:id => params[:id])
    if( @user.count > 0 )
      render json: { response: @user, error: false, message: nil }
    else
      render json: { response: nil, error: true, message: 'Not exists user' }
    end
  end

  def update
    render json: { response: 'hola13', error: false }
  end

  def destroy
    # @user = User.where(:id => params[:id])
    # @user->state(1)
    # if( @user.count > 0 )
    #   render json: { response: true, error: false, message: 'Removed user successful' }
    # else
    #   render json: { response: nil, error: true, message: 'Not exists user' }
    # end
  end
end
