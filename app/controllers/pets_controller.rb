class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    if params[:id].present?
      @pet = Pet.find(params[:id])
      # Show the specific pet's information
    else
      # Display a generic "show" page
    end
  end
  
end
