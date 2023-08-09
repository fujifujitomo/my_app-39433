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
    target_date = Date.new(2023, 8, 5) # 表示したい特定の日付を設定
    @writes = Write.where("DATE(start_time) = ?", target_date).order(:start_time)
  end

  private

  def write_params
     params.require(:write).permit(:icon, :start_time, :memo, :schedule, :created_at)

  end
  
end
