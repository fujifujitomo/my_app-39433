class WritesController < ApplicationController

  def index
    @writes = Write.all
  end

  def new
    @write = Write.new
  end

  def create
    write_params = params.require(:write).permit(:icon, :memo, :start_time, :schedule)
    if
      write_params[:start_time].blank?
      write_params[:start_time] = Time.current
    end
    @write = Write.create(write_params)
    if
      @write.save
      redirect_to write_path(@write), notice: 'Write was successfully created.'
    else
      render :new
    end
  end

  def show
    @target_date = Date.parse(params[:id])
    @writes = Write.where(start_time: @target_date.beginning_of_day..@target_date.end_of_day)
  end

  private

  def write_params
     params.require(:write).permit(:icon, :start_time, :memo, :schedule, :created_at)
  end
  
end
