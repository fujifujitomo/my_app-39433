class PetsController < ApplicationController
  before_action :authenticate_user!, only: [:create] # ユーザーのログインをチェック

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    if user_signed_in? 
      @pet = current_user.pets.build(pet_params) 
    if @pet.save
      redirect_to root_path
    else
      render :new
    end
    else 
      redirect_to new_user_session_path, alert: "ログインしてください。"
    end
  end


  def show
    @pet = Pet.find(params[:id])
  end


  private
  def pet_params
    params.require(:pet).permit(:name, :gender, :kind, :birthday, :image).merge(user_id: current_user.id)
  end
end