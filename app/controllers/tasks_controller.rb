class TasksController < ApplicationController
  def index
    @tasks = Task.filtered_by(filter_params).ordered_by(order_params)

    respond_with @tasks
  end

  def create
    @task = Task.create(task_params)

    respond_with @task
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    respond_with @task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    head :no_content
  end

  private

  def task_params 
    params.permit(:title, :weight, :completed)
  end

  def filter_params
    {}
  end

  def order_params
    {}
  end

end
