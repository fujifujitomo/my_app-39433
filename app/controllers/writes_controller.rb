class WritesController < ApplicationController

  def index
    @writes = Write.all
  end

  def new
    @write = Write.new
    @pets = Pet.all
  end

  def create

    @write = Write.create(write_params)
    binding.pry
    if @write.save
      redirect_to write_path(@write)
    else
      render :new
    end
  end

  def show
  end

  private

  def write_params
    params.require(:write).permit(:icon, :input_date, :memo, :schedule)
  end
  
end
