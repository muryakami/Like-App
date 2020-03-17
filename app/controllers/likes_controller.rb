class LikesController < ApplicationController
  before_action :logged_in_user
  before_action :set_job, only: [:create, :update, :destroy]
  # before_action :set_employee, only: [:create, :update, :destroy]

  def create
    case current_user.type
    when "Employer"
      # FIXME:
      # @like = Like.create!(employee: @employee, job: @job, job_like: params[:like])
    when "Employee"
      @like = Like.create!(employee: current_user, job: @job, employee_like: params[:like])
    end
  end

  def update
    @like = Like.find_by(employee: current_user, job: @job)
    case current_user.type
    when "Employer"
      # FIXME:
      # @like.update!(job_like: params[:like])
    when "Employee"
      @like.update!(employee_like: params[:like])
    end
  end

  def destroy
    Like.find_by(employee: current_user, job: @job).destroy!
  end

  private

    def set_job
      @job = Job.find_by(id: params[:job_id])
    end

    # def set_employee
    #   @employee = Employee.find_by(id: params[:employee_id])
    # end
end
