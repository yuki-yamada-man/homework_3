class EatsController < ApplicationController
  
  def new
    @food = Food.new
  end
  
  def create
    @food = Food.new
    @food.save(food_params)
    redirect_to eats_path(@food.id)
  end
  
  def index
    @foods = Food.all
  end 
  
  def show
    @food = Food.find(params[:id])
  end
  
  def edit
    @food = Food.find(params[:id])
  end
  
  def update
    @food = Food.find(params[:id])
    @food.update(food_params)
    redirect_to eats_path
  end
  
  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to eats_path
  end
  
  private
  def food_params
    params.require(:food).permit(:name,:body)
  end
  
  
end
