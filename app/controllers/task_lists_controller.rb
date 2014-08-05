class TaskListsController < ApplicationController

  def index
    @task_lists = TaskList.order(:name)
  end

  def new
    @task_list = TaskList.new
  end

  def create
    @task_list = TaskList.create(name: params[:task_list][:name])

    if @task_list.valid?
      flash[:notice] = "Task List was created successfully!"
      redirect_to root_path
    else
      @task_list.errors
      render :new
    end
  end

  def edit
    @task_list = TaskList.find(params[:id])
  end

  def update
    @task_list = TaskList.find(params[:id])
    if @task_list.update(
      name: params[:task_list][:name]
    )
      flash[:notice] = "Your task list was successfully updated!"
      redirect_to root_path
    else
      render :edit
    end
  end

end