class RfqsController < ApplicationController

  def new
    @rfq = Rfq.new
  end

  # def create
  #   @rfq = Rfq.create(rfq_params)
  # end


  private

  def rfq_params
    params.require(:rfq).permit(:name, :email, :phone_number)
  end


end
