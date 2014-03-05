class AdminMailer < ActionMailer::Base
  default from: "contact@facespace.com",
          to: "me@facespace.com"


  def contact_form(params)
    @params = params
    mail(subject: "New Contact Form Submission")

  end

  def newssignup(params)
    @params = params
    mail(subject: "Another sucka wants our newsletter")
  end

end
