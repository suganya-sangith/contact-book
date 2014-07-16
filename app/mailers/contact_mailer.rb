class ContactMailer < ActionMailer::Base
  default :from => "suganya.sangith@gmail.com"
  def email_send(contact)
  	@contact = contact
  	mail(:to => contact.email, :subject => "Registered")
  end
end
