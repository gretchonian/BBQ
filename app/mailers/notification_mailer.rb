class NotificationMailer < ApplicationMailer
  default from: "no-reply@otbbbq.com"

  def rfq_submitted(rfq)
    @rfq = rfq
    @meats = rfq.foods_ordered(rfq.meats).join(', ')
    @sides = rfq.foods_ordered(rfq.sides).join(', ')
    mail(to: "gretchen.testing.emails@gmail.com",
      subject: "A new RFQ has been submitted from #{rfq.name}!")
  end
end
