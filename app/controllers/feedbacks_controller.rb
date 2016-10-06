class FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.all
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @boot = Boot.find(params[:boot_id])
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
    if @feedback.update(strong_params)
      redirect_to feedback_path(@feedback)
    else
      render 'edit'
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to feedbacks_path
  end

  private

  def feedback_params
    params.require(:feedback).permit(:rating, :comment, :ask?)
  end
end
