class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to root_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @pet = Pet.new
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :gender, :kind, :birthday, :image).merge(user_id: current_user.id)
  end

end
