class IngredientsController < ApplicationController
  before_action :set_ingredient, only: %i[ show edit update destroy ]
  protect_from_forgery with: :null_session

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
  end

  def create
  
    @ingredient = Ingredient.new(ingredient_params)
      if @ingredient.save
        redirect_to ingredients_path, notice: "Ingredient was successfully created."
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update
  
      if @ingredient.update(ingredient_params)
        redirect_to ingredients_path, notice: "Ingredient was successfully updated."
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
      redirect_to ingredients_path, notice: "Ingredient was successfully destroyed." 
  end

  private
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
end
