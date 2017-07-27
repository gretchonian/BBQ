class RfqsController < ApplicationController

  def new
    @rfq = Rfq.new 
  end

  def create
    @rfq = Rfq.create(rfq_params)
    if @rfq.valid? 
      redirect_to menu_path
      NotificationMailer.rfq_submitted(@rfq).deliver
    else
      render :new, status: :unprocessable_entity
    end
   
  end


  private

  def rfq_params
    params.require(:rfq).permit(:name, :email, :phone_number)
  end


end
