class PetsController < ApplicationController

  def new
    @pet = Pet.new
  end

  def show
    @pets = Pet.find(params[:id])
    @user = @pet.user
  end

end
