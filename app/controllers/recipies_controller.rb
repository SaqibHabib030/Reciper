class RecipiesController < ApplicationController
  before_action :set_recipy, only: %i[ show edit update destroy ]
  protect_from_forgery except: :create

  def index
    @recipies = Recipy.all
    @recipy = Recipy.new
    @ingredients = Ingredient.all
  end

  def show
    @ingredients = Ingredient.all

  end

  def new
    @recipy = Recipy.new
    @ingredients = Ingredient.all
  end 
  
  def create
    @recipy = Recipy.new(recipy_params)
    if @recipy.save
      redirect_to recipies_path
    # end
    # respond_to do |format|
    #   if @recipy.save
    #     format.js 
    #     format.html { redirect_to recipy_url(@recipy), notice: "Recipy was successfully created." }
      else
        render :new, status: :unprocessable_entity 
      end
    # end
  end
  
  def edit
    @recipy = Recipy.new
    @ingredients = Ingredient.all
  end

  def update
    respond_to do |format|
      if @recipy.update(recipy_params)
        format.html { redirect_to recipy_url(@recipy), notice: "Recipy was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipy.destroy
    respond_to do |format|
      format.html { redirect_to recipies_url, notice: "Recipy was successfully destroyed." }
    end
  end
  private
    def set_recipy
      @recipy = Recipy.find(params[:id])
    end

    def recipy_params
      params.require(:recipy).permit(:name, :procedure,:image, recipy_ingredients_attributes: [:_destroy,:id,:quantity,:unit,:ingredient_id])
    end
end
