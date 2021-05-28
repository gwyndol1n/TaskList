class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
  end

  def destroy
  end

  def update
  end

  private

  def task_params
    params.require(:task).permit(:position, :title, :is_done)
  end
end
