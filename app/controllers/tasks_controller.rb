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
end
