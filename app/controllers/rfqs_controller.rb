class RfqsController < ApplicationController

  def new
    @rfq = Rfq.new
  end

  def create
    @rfq = Rfq.create(rfq_params)
    redirect_to menu_path
  end


  private

  def rfq_params
    params.require(:rfq).permit(:name, :email, :phone_number)
  end


end
