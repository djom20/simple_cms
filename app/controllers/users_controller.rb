class UsersController < ApplicationController

  def index
    @users = User.select(:id, :name, :lastname, :email, :password).where(:state => 1).order(:name)
    if( @users.count(:id) > 0 )
      render json: { response: @users, error: false, message: nil }
    else
      render json: { response: nil, error: true, message: 'Not exists users' }
    end
  end

  def create
    render json: { response: 'hola12', error: false }
  end

  def show
    @user = User.select(:id, :name, :lastname, :email, :password).where(:id => params[:id], :state => 1)
    if( @user.count(:id) > 0 )
      render json: { response: @user, error: false, message: nil }
    else
      render json: { response: nil, error: true, message: 'Not exists user' }
    end
  end

  def update
    render json: { response: 'hola13', error: false }
  end

  def destroy
    @user = User.where(:id => params[:id])
    @user.state(1)
    if( @user.count > 0 )
      render json: { response: true, error: false, message: 'Removed user successful' }
    else
      render json: { response: nil, error: true, message: 'Not exists user' }
    end
  end
end
