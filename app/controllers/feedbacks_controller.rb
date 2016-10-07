class FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.all
  end

  def new
    @boot = Boot.find(current_user.id)
    @feedback = Feedback.new
  end

  def create
    @boot = Boot.find(current_user.id)
    @feedback = @boot.feedbacks.create(feedback_params)
    redirect_to boot_path(@boot)
  end

  def show
    @feedback = Feedback.find(params[:id])
  end
  
  def edit
    @feedback = Feedback.find(params[:id])
  end

  def update
    @feedback = Feedback.find(params[:id])
    if @feedback.update(feedback_params)
      redirect_to boot_feedback_path(@feedback)
    else
      render 'edit'
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to boot_path(current_user)
  end

  private

  def feedback_params
    params.require(:feedback).permit(:rating, :comment, :ask?)
  end
end
