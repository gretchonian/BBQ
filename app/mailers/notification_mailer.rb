class NotificationMailer < ApplicationMailer
  default from: "no-reply@otbbbq.com"

  def rfq_created(rfq)
  mail(to: gretchonian@gmail.com, subject: "You have a new request for quote")
  end
end
