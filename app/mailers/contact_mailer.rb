class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail(
        from: ENV["SEND_MAIL"],
        to: contact.email,
        subject: t(".subject"),
        bcc: ENV["SEND_MAIL"]
    )
  end
end
