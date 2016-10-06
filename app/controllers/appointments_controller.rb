class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(strong_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render 'new'
    end  
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(strong_params)
      redirect_to appointment_path(@appointment)
    else
      render 'edit'
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointment_path
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
