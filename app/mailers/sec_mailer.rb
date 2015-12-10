class SecMailer < ApplicationMailer

  def sec_sender(from_address, body, subject, name)
    @email = from_address
    @name = name
    @body = body
    mail(to: 'hello@secventures.com',
         from: from_address,
         subject: subject
    )
  end
end
