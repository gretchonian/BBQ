class NotificationMailer < ApplicationMailer
  default from: "no-reply@otbbbq.com"

  def rfq_submitted(rfq)
    @rfq = rfq
    mail(to: "gretchen.testing.emails@gmail.com",
      subject: "A new RFQ has been submitted from #{rfq.name}!")
  end
end
