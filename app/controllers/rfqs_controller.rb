class RfqsController < ApplicationController

  def new
    @rfq = Rfq.new 
  end

  def create
    @rfq = Rfq.create(rfq_params)
    if @rfq.valid?
      redirect_to rfq_path(@rfq)
    else
      render :new, status: :unprocessable_entity
    end
   
  end

  def update
    @rfq = Rfq.find(params[:id])
    @rfq.update_attributes(rfq_params)
    if @rfq.valid?
      redirect_to thankyou_path
    else
      render :update, status: :unprocessable_entity
    end
  end

  def show
    @rfq = Rfq.where(id: params[:id]).last
    foods = Food.where(rfq_id: @rfq)
    @meats= foods.where(type: "meat")
    @sides=foods.where(type: "side")
  end

  def thankyou
  end


  private

  def rfq_params
    params.require(:rfq).permit(:name, :email, :phone_number, :people_attending, :catering_type, :comments, meats: [], sides: [])
  end


end
