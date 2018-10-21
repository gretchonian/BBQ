class FoodsController < ApplicationController

  def update
    current_meat = Food.find(params[:id])
    current_meat.update_attributes(food_params)
    # render :json
    # redirect_to rfq_path(current_meat.rfq)
  end

  private

  def food_params
    params.require(:food).permit(:selected)
  end

end
