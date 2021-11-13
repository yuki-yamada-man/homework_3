class EatsController < ApplicationController

  def new
    @eat = Eat.new
  end

  def create
    @eat = Eat.new(eat_params)
    @eat.save
    redirect_to eat_path(@eat.id)
  end

  def index
    @eats = Eat.all
  end

  def show
    @eat = Eat.find(params[:id])
  end

  def edit
    @food = Eat.find(params[:id])
  end

  def update
    @eat = Eat.find(params[:id])
    @eat.update(eat_params)
    redirect_to eat_path(@eat.id)
  end

  def destroy
    @eat = Eat.find(params[:id])
    @eat.destroy
    redirect_to eats_path
  end

  private


  def eat_params
    params.require(:eat).permit(:name, :body)
  end


end
