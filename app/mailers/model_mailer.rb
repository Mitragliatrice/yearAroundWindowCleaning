class ModelMailer < ApplicationMailer
default from: "mathews.colton@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_request_notification.subject
  #
  def new_request_notification quote
    @quotes = quote

    mail to: "mathews.colton@gmail.com", subject: "New Quote Request Received!"
  end
end
