class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(params.require(:dog).permit!)

    if @dog.save
      flash[:notice] = "You created a dog!"
      redirect_to dogs_path
    else
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])

    if @dog.update(params.require(:dog).permit!)
      flash[:notice] = "You updated a dog!"
      redirect_to dogs_path
    else
      render :edit
    end
  end

  def destroy
    dog = Dog.find(params[:id])

    dog.destroy
    flash[:notice] = "Dog deleted!"
    redirect_to dogs_path
  end
end