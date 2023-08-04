class WritesController < ApplicationController

  def index
    @writes = Write.all

  end

  def new
    @write = Write.new
    @pets = Pet.all
    @pet = Pet.new
  end

  def create
    @write = Write.new(write_params)
    if @write.save
      redirect_to write_path(@write)
    else
      render :new
    end
  end

  def show
    @write = Write.find(params[:id])
  end

  private

  def write_params
    permitted_params = params.require(:write).permit(:icon, :input_date, :memo, :schedule)
    # ユーザーがログインしているかを確認してからuser_idを設定
    user_id = current_user.id if current_user
    # params[:pet_id]が存在するかを確認してからpet_idを設定
    pet_id = params[:pet_id] if params[:pet_id]
    permitted_params.merge(user_id: user_id, pet_id: pet_id)
  end
  
end
