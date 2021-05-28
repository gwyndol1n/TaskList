class TasksController < ApplicationController
	# find task based on ID provided for these methods
	before_action :find_task, only: [:destroy, :update]

	def index
		@tasks = Task.all.order(position: :asc)
	end

	def create
		@task = Task.new(task_params)

		respond_to do |format|
			format.js {
				if @task.save
					flash.now[:notice] = "Task created."
				else
					flash.now[:alert] = "Task creation failed."
				end
			}
		end
	end

	def destroy
		respond_to do |format|
			format.js {
				if @task.destroy
					flash.now[:notice] = "Task deleted."
				else
					flash.now[:alert] = "Task deletion failed."
				end

				render :update
			}
		end
		
	end

	def update
		respond_to do |format|
			format.js {
				if @task.update(task_params)
					flash.now[:notice] = "Task updated."
				else
					flash.now[:alert] = "Task update failed."
				end

				render :update
			}
		end
	end

	def upsert
		respond_to do |format|
			format.js {
				if Task.upsert_all(tasks_params[0].values)
					flash.now[:notice] = "Tasks updated."
				else
					flash.now[:alert] = "Tasks update failed."
				end

				render :update
			}
		end
	end

	private

	def task_params
		params.require(:task).permit(:id, :position, :title, :is_done)
	end

	def tasks_params
		params.require(:tasks)
	end

	def find_task
		if params[:id]
			@task = Task.find(params[:id])
		end
	end
end
