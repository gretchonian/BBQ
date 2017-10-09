class FoodsController < ApplicationController
  def index
    @meat = Food.where(type: "meat").last
  end

  def create
    food = Food.create(food_params)
    # Client.all(:conditions => { 'locked' => true })
    # Model.find provides a :joins option for specifying JOIN clauses on the resulting SQL. There multiple different ways to specify the :joins option:
    # render json: meat
  end

  def show
        # @meat = @food.meats

    # render json: meat
  end

  private

  def food_params #need to add rfq_id
    params.require(:food).permit(:selected, :type, :name)
  end
end
