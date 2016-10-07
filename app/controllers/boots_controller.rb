class BootsController < ApplicationController
  def new
    @boot = Boot.new
  end

  def create
    @boot = Boot.new(strong_params)
    if @boot.save
      login(@boot)
      redirect_to boot_path(@boot)
    else
      render 'new'
    end
  end

  def edit
    @boot = Boot.find(params[:id])
  end

  def update
    @boot = Boot.find(params[:id])
    if @boot.update(strong_params)
      redirect_to boot_path(@boot)
    else
      render 'edit'
    end
  end

  def destroy
    @boot = Boot.find(params[:id])
    @boot.destroy
    redirect_to boot_path
  end

  def index
    @boots = Boot.all
  end

  def show
    @boot = Boot.find(params[:id])
  end
private

  def strong_params
    params.require(:boot).permit(:first_name, :last_name, :email, :phone, :password, :role)
  end
end
