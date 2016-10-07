class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    all_params = strong_params.to_h.merge({mentor_id: current_user.id, topic_id: Topic.first.id})
    @appointment = Appointment.new(all_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      puts 'did not save'
      p @appointment.errors.full_messages
      render 'new'
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(student_id: current_user.id)
      redirect_to appointment_path(@appointment)
    else
      render 'edit'
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to boot_path(current_user)
  end

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private

  def strong_params
    params.require(:appointment).permit(:time, :date, :location, :mentor_id, :topic_id, :student_id)
  end
end
