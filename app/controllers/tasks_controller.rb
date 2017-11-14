class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def index
    @tasks = Task.all
  end

  def show
    param_id
  end

  def edit
    param_id
  end

  def update
    param_id
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    param_id
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :details)
  end

  def param_id
    @task = Task.find(params[:id])
  end
end
