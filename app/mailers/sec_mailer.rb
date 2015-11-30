class SecMailer < ApplicationMailer
  default from: "hello@secventures.com"
  def sec_sender(from_address, body, subject, name)
    @name = name
    @body = body
    mail(to: 'fender707@rambler.ru',
         from: from_address,
         subject: subject
    )
  end
end
