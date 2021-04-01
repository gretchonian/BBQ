class FoodsController < ApplicationController

  def update
    #ajax is used here...
    current_choice = Food.find(params[:id])
    current_choice.update(food_params)
  end

  private

  def food_params
    params.require(:food).permit(:selected)
  end

end
