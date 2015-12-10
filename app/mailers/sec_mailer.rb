class SecMailer < ApplicationMailer

  def sec_sender(from_address, body, subject, name)
    @email = from_address
    @name = name
    @body = body
    mail(to: 'fender707@rambler.ru',
         from: from_address,
         subject: subject
    )
  end
end
