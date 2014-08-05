class TasksController < ApplicationController
  def new
    @task = Task.new
  end
  def index
    @task = Task.order(:description)
  end

  def create
    @task = Task.new(
      task_list_id: params[:task_list_id],
      description: params[:task][:description]    )
    if @task.save
      flash[:notice] = "Task was created successfully!"
      redirect_to root_path
    else
      @task_list = TaskList.find(params[:task_list_id])
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(
      name: params[:description])
      flash[:notice] = "Your tasks was successfully updated!"
      redirect_to root_path
    else
      render :edit
    end
  end
  end
