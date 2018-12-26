class NotificationMailer < ApplicationMailer
  default from: "no-reply@otbbbq.com"


  def rfq_submitted(rfq)
    @rfq = rfq
    @meats = rfq.foods_ordered(rfq.meats).join(', ')
    @sides = rfq.foods_ordered(rfq.sides).join(', ')
    mail(to: "offthebonebbq1@gmail.com",
      subject: "A new RFQ has been submitted from #{rfq.name}!")
  end

  def rfq_thankyou(rfq)
    @rfq = rfq
    @meats = rfq.foods_ordered(rfq.meats).join(', ')
    @sides = rfq.foods_ordered(rfq.sides).join(', ')
    mail(to: @rfq.email,
      subject: "We have received your quote request")
  end
end
