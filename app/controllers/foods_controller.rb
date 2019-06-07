# frozen_string_literal: true

class FoodsController < ProtectedController
  before_action :set_food, only: %i[show update destroy]

  # GET /foods
  def index
    @foods = Food.all

    render json: @foods
  end

  # GET /foods/1
  def show
    render json: @food
  end

  # POST /foods
  def create
    @food = current_user.foods.build(food_params)

    if @food.save
      render json: @food, status: :created, location: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foods/1
  def update
    if @food.update(food_params)
      render json: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foods/1
  def destroy
    @food.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_food
    @food = current_user.foods.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def food_params
    params.require(:food).permit(:name, :notes, :restaurant_id)
  end

  private :set_food, :food_params
end
