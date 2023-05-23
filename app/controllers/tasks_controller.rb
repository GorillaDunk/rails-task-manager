class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    show_id = params[:id]
    @task = Task.find(show_id)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    show_id = params[:id]
    @task = Task.find(show_id)
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path
  end

  def destroy
    @task = Task.find(param[:id])
    @task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
