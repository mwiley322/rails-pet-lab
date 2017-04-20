class PetsController < ApplicationController

  def index
    @owner = Owner.find_by(id: params[:owner_id])
    @pets = @owner.pets
  end
  def new
    @owner = Owner.find_by(id: params[:owner_id])
    @pet = Pet.new
  end
  def show
    @pet = Pet.find_by(id: params[:id])
  end

  # TODO: set up *create* method with database interactions for create
  # TODO: handle save errors and communicate issues to user

  private
  def pet_params
    params.require(:pet).permit(:name, :breed, :date_of_birth)
  end

end
