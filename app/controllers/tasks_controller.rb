class TasksController < ApplicationController
  def new
    @task = Task.new
    @task_list = TaskList.find(params[:task_list_id])
  end
  def index
    @task = Task.order(:description)
  end

  def create
    @task = Task.new(
        description: params[:task][:description],
        task_list_id: params[:task_list_id].to_i,
        due_date: Date.new(params[:task_date][:year].to_i, params[:task_date][:month].to_i, params[:task_date][:day].to_i))
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
      description: params[:task][:description])
      flash[:notice] = "Your tasks was successfully updated!"
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  def show

  end
  end