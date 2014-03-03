class UserMailer < ActionMailer::Base
  layout "mailer"
  default from: "no-reply@facespace.com"


  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to the Space of Faces")
  end

end
