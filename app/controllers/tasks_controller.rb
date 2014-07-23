class TasksController < ApplicationController

  layout false
  respond_to :json

  def index
    @user = User.where(:id => params[:user_id])
    @tasks = @user.all()
    # @tasks = Task.all()
    if( @tasks.count > 0 )
      render json: { response: @tasks, error: false, message: '' }
    else
      render json: { response: nil, error: true, message: 'Not exists tasks' }
    end
  end

  def create
    render json: { response: 'hola1', error: false }
  end

  def show
    @task = User.where(:id => params[:id])
    if( @task.count > 0 )
      render json: { response: @task, error: false, message: nil }
    else
      render json: { response: nil, error: true, message: 'Not exists task' }
    end
  end

  def update
    render json: { response: 'hola3', error: false }
  end

  def destroy
    render json: { response: 'hola4', error: false }
  end
end
