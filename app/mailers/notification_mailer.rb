class NotificationMailer < ApplicationMailer
  default from: "no-reply@otbbbq.com"

  def rfq_submitted
    mail(to: "gretchen.testing.emails@gmail.com",
      subject: "A new RFQ has been submitted!")
  end
end
